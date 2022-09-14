import 'package:flutter/material.dart';
import 'package:movieapp/constants/colors.dart';
import 'package:movieapp/constants/ui_constants.dart';

class MovieOptions extends StatelessWidget {
  const MovieOptions({super.key});

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movieOptions[0],
                style: const TextStyle(
                  fontSize: 32.0,
                  color: highlightedTextColor,
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                height: 6,
                width: 40,
                decoration: BoxDecoration(
                  color: kpink,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ],
          ),
          const SizedBox(width: 40),
          Text(
            movieOptions[1],
            style: const TextStyle(
              fontSize: 32.0,
              color: unhighlightedTextColor,
            ),
          ),
          const SizedBox(width: 40),
          Text(
            movieOptions[2],
            style: const TextStyle(
              fontSize: 32.0,
              color: unhighlightedTextColor,
            ),
          ),
          const SizedBox(width: 40),
        ],
      ),
    );
  }
}
