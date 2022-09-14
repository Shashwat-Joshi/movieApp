part of 'movie_cubit.dart';

@immutable
abstract class MovieState {}

class MovieLoading extends MovieState {}

class MovieLoaded extends MovieState {
  final List<Movie> movies;

  MovieLoaded({required this.movies});
}

class MovieError extends MovieState {
  final String message;

  MovieError({required this.message});
}
