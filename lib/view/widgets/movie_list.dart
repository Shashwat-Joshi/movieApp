import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/constants/colors.dart';
import 'package:movieapp/data/models/movie.model.dart';
import 'package:movieapp/view/screens/movie_detail.dart';

class MovieListWidget extends StatelessWidget {
  final List<Movie>? movies;

  const MovieListWidget({
    super.key,
    required this.movies,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: PageView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: movies != null
            ? [
                for (int i = 0; i < movies!.length; i++)
                  MovieCard(movie: movies![i])
              ]
            : [],
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (_) => MovieDetailPage(movie: movie),
              ),
            );
          },
          child: Image.asset("assets/images/ford.png"),
        ),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            movie.title ?? "Title NOT FOUND",
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 32.0,
              color: highlightedTextColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.star,
              color: ratingStarColor,
            ),
            SizedBox(width: 8),
            Text(
              "8.2",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ],
    );
  }
}
