import 'package:flutter/material.dart';

import '../../../../../domain/models/media/media.dart';
import 'banner.dart';

class MovieLoader extends StatelessWidget {
  const MovieLoader({
    super.key,
    required this.media,
  });
  final Media? media;

  @override
  Widget build(BuildContext context) {
    if (media?.backdropPath == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return Column(
      children: [
        Hero(
          tag: 'movie-${media!.id}',
          child: MovieBanner(
            path: media!.backdropPath,
          ),
        ),
        const Expanded(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ],
    );
  }
}
