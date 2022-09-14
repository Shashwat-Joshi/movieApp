import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/constants/colors.dart';
import 'package:movieapp/logic/cubit/movie_cubit.dart';
import 'package:movieapp/view/widgets/genre_options.dart';
import 'package:movieapp/view/widgets/home_screen_app_bar.dart';
import 'package:movieapp/view/widgets/movie_list.dart';
import 'package:movieapp/view/widgets/movie_options.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<MovieCubit>(context, listen: false).fetchMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryWhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 56),
          const HomeScreenAppBar(),
          const SizedBox(height: 48),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const MovieOptions(),
                  const SizedBox(height: 48),
                  const GenreOptions(),
                  const SizedBox(height: 40),
                  BlocBuilder<MovieCubit, MovieState>(
                    builder: (context, state) {
                      if (state is MovieLoaded) {
                        return MovieListWidget(movies: state.movies);
                      } else if (state is MovieError) {
                        return Center(
                          child: Text(state.message),
                        );
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
