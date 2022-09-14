import 'package:flutter/material.dart';
import 'package:movieapp/constants/colors.dart';

class CastAndCrewWidget extends StatelessWidget {
  final String imgpath, name, position;

  const CastAndCrewWidget({
    super.key,
    required this.imgpath,
    required this.name,
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 65,
            width: 65,
            child: Image.asset(
              imgpath,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            name,
            style: const TextStyle(
              fontSize: 14,
              color: highlightedTextColor,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            position,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xff9A9BB2),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
