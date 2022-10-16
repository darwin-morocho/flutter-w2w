import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/env.dart';
import '../../../../../domain/models/movie/movie.dart';
import '../../../../global/app_colors.dart';

class MovieBanner extends StatelessWidget {
  const MovieBanner({
    super.key,
    required this.path,
    this.movie,
  });
  final String path;
  final Movie? movie;

  @override
  Widget build(BuildContext context) {
    const backgroundColor = AppColors.dark;

    final decoration = BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.transparent,
          backgroundColor.withOpacity(0.5),
          backgroundColor,
        ],
      ),
    );

    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 16 / 14,
          child: ExtendedImage.network(
            Env.getImageUrl(path, size: ImageSize.original),
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: -2,
          child: movie != null
              ? Container(
                  padding: const EdgeInsets.all(20),
                  decoration: decoration,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movie!.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Wrap(
                        spacing: 10,
                        children: movie!.genres
                            .map(
                              (e) => Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white60,
                                  ),
                                ),
                                padding: const EdgeInsets.all(4),
                                child: Text(
                                  e.name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      )
                    ],
                  ),
                )
              : Container(
                  height: 100,
                  width: double.infinity,
                  decoration: decoration,
                ),
        ),
      ],
    );
  }
}
