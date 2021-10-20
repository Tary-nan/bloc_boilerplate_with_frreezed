import 'package:architecture_bloc/src/features/scroll_infinity/blocs/post_bloc.dart';
import 'package:architecture_bloc/src/features/scroll_infinity/models/events/posty.dart';
import 'package:architecture_bloc/src/features/scroll_infinity/models/states/poststate.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) context.read<PostBloc>().add(PostEvent.fetch());
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Post'),
        ),
        body: Center(
          child: BlocBuilder<PostBloc, PostState>(builder: (context, state) {
            switch (state.status) {
              case PostStatus.failure:
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      InkWell(
                          onTap: () {
                            AutoRouter.of(context)
                                .pushNamed('/book-details-page');
                          },
                          child: const Text('error ...')),
                      ...state.posts
                          .map((post) => ListTile(
                                title: Text(post.title),
                              ))
                          .toList()
                    ],
                  ),
                );
              case PostStatus.success:
                return ListView.builder(
                    controller: _scrollController,
                    itemCount: state.hasReachedMax
                        ? state.posts.length
                        : state.posts.length + 1,
                    itemBuilder: (context, index) {
                      return index >= state.posts.length
                          ? const BottomLoader()
                          : ListTile(
                              title: Text(state.posts[index].title),
                            );
                    });
              default:
                return const CircularProgressIndicator();
            }
          }),
        ));
  }
}

class BottomLoader extends StatelessWidget {
  const BottomLoader({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 24,
        width: 24,
        child: CircularProgressIndicator(strokeWidth: 1.5),
      ),
    );
  }
}
