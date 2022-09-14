import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/logic/cubit/movie_cubit.dart';
import 'package:movieapp/view/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      home: BlocProvider(
        create: (context) => MovieCubit(),
        child: const HomeScreen(),
      ),
    );
  }
}
