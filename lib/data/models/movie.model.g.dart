// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      title: json['title'] as String?,
      year: json['year'] as int?,
      cast: (json['cast'] as List<dynamic>?)?.map((e) => e as String).toList(),
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'title': instance.title,
      'year': instance.year,
      'cast': instance.cast,
      'genres': instance.genres,
    };
