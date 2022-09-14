import 'package:flutter/material.dart';
import 'package:movieapp/constants/colors.dart';
import 'package:movieapp/constants/ui_constants.dart';
import 'package:movieapp/data/models/movie.model.dart';
import 'package:movieapp/view/widgets/cast_widget.dart';
import 'package:movieapp/view/widgets/genre_options.dart';

class MovieDetailPage extends StatelessWidget {
  final Movie movie;

  const MovieDetailPage({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: kprimaryWhite,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 400,
                child: Stack(
                  children: [
                    Image.asset("assets/images/cover.png"),
                    Positioned(
                      bottom: 10,
                      right: 0,
                      child: Container(
                        width: size.width - 32,
                        child: Image.asset(
                          "assets/images/movie_stats.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: 22,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset("assets/icons/arrow-left.png"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 32.0, right: 22),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: size.width * 0.6,
                          child: Column(
                            children: [
                              Text(
                                movie.title ?? "NOT FOUND",
                                style: const TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    movie.year == null
                                        ? "-"
                                        : movie.year.toString(),
                                    style: const TextStyle(
                                      color: Color(0xff9A9BB2),
                                    ),
                                  ),
                                  const Text(
                                    "PG-13",
                                    style: TextStyle(
                                      color: Color(0xff9A9BB2),
                                    ),
                                  ),
                                  const Text(
                                    "2h 32min",
                                    style: TextStyle(
                                      color: Color(0xff9A9BB2),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Image.asset("assets/images/button.png")
                      ],
                    ),
                    const SizedBox(height: 20),
                    movie.genres != null
                        ? Row(
                            children: [
                              for (int genre = 0;
                                  genre < movie.genres!.length;
                                  genre++)
                                GenreWidget(title: movie.genres![genre]),
                            ],
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
              const SizedBox(height: 48),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Plot Summary",
                      style: TextStyle(
                        fontSize: 24.0,
                        color: highlightedTextColor,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      plotsummary,
                      style: TextStyle(
                        color: Color(0xff737599),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 48.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Cast & Crew",
                      style: TextStyle(
                        fontSize: 24.0,
                        color: highlightedTextColor,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CastAndCrewWidget(
                          imgpath: "assets/images/cast1.png",
                          name: "James Mangold",
                          position: "Director",
                        ),
                        CastAndCrewWidget(
                          imgpath: "assets/images/cast2.png",
                          name: "Matt Damon",
                          position: "Carroll",
                        ),
                        CastAndCrewWidget(
                          imgpath: "assets/images/cast3.png",
                          name: "Christian Bale",
                          position: "Ken Miles",
                        ),
                        CastAndCrewWidget(
                          imgpath: "assets/images/cast4.png",
                          name: "Caitriona Balfe",
                          position: "Mollie",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32.0),
            ],
          ),
        ),
      ),
    );
  }
}
