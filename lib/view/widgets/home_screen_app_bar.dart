import 'package:flutter/material.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        children: [
          Image.asset(
            "assets/icons/menu.png",
            height: 24,
            width: 24,
          ),
          const Spacer(),
          Image.asset(
            "assets/icons/search.png",
            height: 24,
            width: 24,
          ),
        ],
      ),
    );
  }
}
