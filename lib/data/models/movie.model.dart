import 'package:json_annotation/json_annotation.dart';

part 'movie.model.g.dart';

@JsonSerializable()
class Movie {
  final String? title;
  final int? year;
  final List<String>? cast, genres;

  Movie({
    required this.title,
    required this.year,
    required this.cast,
    required this.genres,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
