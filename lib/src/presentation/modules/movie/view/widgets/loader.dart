import 'package:flutter/material.dart';

import '../../../../../domain/models/media/media.dart';
import '../../../../global/build_context_extension.dart';
import '../../../../global/widgets/media/media_banner.dart';

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

    final isLandscape = context.isLandscape;
    final banner = Hero(
      tag: 'movie-${media!.id}',
      child: MediaBanner(
        path: media!.backdropPath,
        data: null,
      ),
    );

    return Flex(
      direction: isLandscape ? Axis.horizontal : Axis.vertical,
      children: [
        if (isLandscape) Expanded(child: banner) else banner,
        const Expanded(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ],
    );
  }
}
