import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/movie.model.dart';
import '../../../data/repository/movie_repository.dart';

part 'movie_state.dart';

class MovieCubit extends Cubit<MovieState> {
  final MovieRepository _movieRepository = MovieRepository();
  MovieCubit() : super(MovieLoading());

  void fetchMovies() async {
    try {
      List<Movie> movies = await _movieRepository.fetchMovies();
      loaded(movies);
    } catch (e) {
      error(e.toString());
    }
  }

  void loaded(List<Movie> movies) => emit(MovieLoaded(movies: movies));

  void error(String err) => emit(MovieError(message: err));
}
