import 'package:bloc/bloc.dart';
import 'package:sanber_pos/data/post_model/post_model.dart';
import 'package:sanber_pos/services/services.dart';

part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final PostRepository repository;

  PostsBloc(this.repository) : super(DataInitial());

  Stream<PostsState> mapEventToState(PostsState event) async* {
    if (event is FetchData) {
      yield DataLoading();

      final result = await repository.fetchData();

      yield result.fold(
        (error) => DataError(error),
        (data) => DataLoaded(data),
      );
    }
  }
}
