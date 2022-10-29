import 'package:flutter/material.dart';

import '../../../../../generated/translations.g.dart';

class MediaOverview extends StatelessWidget {
  const MediaOverview({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20).copyWith(
            bottom: 0,
          ),
          child: Text(
            texts.movie.synopsis,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20).copyWith(top: 5),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
