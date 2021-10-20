
import 'package:architecture_bloc/src/features/scroll_infinity/models/post_model/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'poststate.freezed.dart';
part 'poststate.g.dart';

@freezed
class PostState with _$PostState {
  factory PostState({
    required List<Post> posts,
    required PostStatus status,
    required bool hasReachedMax,
    }) =  Data;
	
  factory PostState.fromJson(Map<String, dynamic> json) =>
			_$PostStateFromJson(json);
}

enum PostStatus { initial, success, failure }
