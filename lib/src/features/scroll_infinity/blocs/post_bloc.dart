import 'package:architecture_bloc/src/features/scroll_infinity/models/events/posty.dart';
import 'package:architecture_bloc/src/features/scroll_infinity/models/post_model/post.dart';
import 'package:architecture_bloc/src/features/scroll_infinity/models/states/poststate.dart';
import 'package:architecture_bloc/src/features/scroll_infinity/services/post_service.dart';
import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  late ServiceAPI service;

  PostBloc({required this.service})
      : super(PostState(
            posts: <Post>[],
            hasReachedMax: false,
            status: PostStatus.initial)) {
    on<PostEvent>(_event);
  }

  Future<void> _event(PostEvent event, emit) async {
    final console = Logger();

    if (state.hasReachedMax) return;
    final request = await event.when(fetch: () async {
      try {
        if (state.status == PostStatus.initial) {
          final data = await service.browse();
          console.i('status : success loaded post');
          return state.copyWith(posts: data, status: PostStatus.success);
        }
        final data = await service.browse(state.posts.length);
        await Future.delayed(const Duration(seconds: 2));
        return data.isEmpty
            ? state.copyWith(hasReachedMax: true)
            : state.copyWith(
                hasReachedMax: false,
                posts: List.of(state.posts)..addAll(data));
      } catch (e) {
        console.e(e);
        return state.copyWith(status: PostStatus.failure);
      }
    });
    emit(request);
  }
}
