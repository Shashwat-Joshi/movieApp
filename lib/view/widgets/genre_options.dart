import 'package:flutter/material.dart';
import 'package:movieapp/constants/colors.dart';
import 'package:movieapp/constants/ui_constants.dart';

class GenreOptions extends StatelessWidget {
  const GenreOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 32),
          for (int genre = 0; genre < genreOptions.length; genre++)
            GenreWidget(title: genreOptions[genre]),
        ],
      ),
    );
  }
}

class GenreWidget extends StatelessWidget {
  final String title;

  const GenreWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 24,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: const Color(0xffDBDCE2),
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: genreTextColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
