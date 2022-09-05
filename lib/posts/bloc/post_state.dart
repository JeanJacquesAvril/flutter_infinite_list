part of 'post_bloc.dart';

enum PostStatus { initial, success, failure }

class PostState extends Equatable {
  const PostState({
    this.status = PostStatus.initial,
    this.posts = const <Post>[],
    this.hasReachedMax = false,
  });
  final PostStatus status;
  final List<Post> posts;
  final bool hasReachedMax;

  PostState copyWith({
    PostStatus? status,
    List<Post>? posts,
    bool? hasReachedMax,
  }) =>
      PostState(
        hasReachedMax: hasReachedMax ?? this.hasReachedMax,
        posts: posts ?? this.posts,
        status: status ?? this.status,
      );

  @override
  String toString() =>
      '''Post State {status: $status, hasReachedMax: $hasReachedMax, posts: ${posts.length}}''';
  @override
  List<Object> get props => [status, posts, hasReachedMax];
}
