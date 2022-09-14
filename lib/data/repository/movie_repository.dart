import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movieapp/constants/api_endpoints.dart';
import 'package:movieapp/data/models/movie.model.dart';

class MovieRepository {
  Future<List<Movie>> fetchMovies() async {
    try {
      var response = await http.get(Uri.parse(movieUrl));

      if (response.statusCode == 200) {
        List result = jsonDecode(response.body);
        return result.map((movie) => Movie.fromJson(movie)).toList();
      } else {
        //! THROW EXCEPTION
        throw Exception(
            "Error occurred, exited with status code ${response.statusCode}");
      }
    } catch (e) {
      //! THROW EXCEPTION
      throw Exception(e.toString());
    }
  }
}
