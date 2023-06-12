part of 'posts_bloc.dart';

// class PostsState extends  {
//   const factory PostsState.initial() = _Initial;
// }
// Define the states
abstract class PostsState {}

class DataInitial extends PostsState {}

class DataLoading extends PostsState {}

class DataError extends PostsState {
  final String error;

  DataError(this.error);
}

class DataLoaded extends PostsState {
  final List<Post> data;

  DataLoaded(this.data);
}
