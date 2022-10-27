import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/env.dart';
import '../../../../domain/models/genre/genre.dart';
import '../../app_colors.dart';
import '../../build_context_extension.dart';

class BannerData {
  BannerData({
    required this.name,
    required this.voteAverage,
    required this.genres,
  });

  final String name;
  final double voteAverage;
  final List<Genre> genres;
}

class MediaBanner extends StatelessWidget {
  const MediaBanner({
    super.key,
    required this.path,
    required this.data,
  });

  final String path;
  final BannerData? data;

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

    final image = ExtendedImage.network(
      Env.getImageUrl(path, size: ImageSize.original),
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    );

    final isLandscape = context.isLandscape;

    return Stack(
      children: [
        isLandscape
            ? image
            : AspectRatio(
                aspectRatio: 16 / 14,
                child: image,
              ),
        Positioned(
          left: 0,
          right: 0,
          bottom: -2,
          child: data != null
              ? Builder(
                  builder: (_) {
                    return Container(
                      padding: const EdgeInsets.all(20).copyWith(
                        bottom: isLandscape ? 120 : 20,
                      ),
                      decoration: decoration,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data!.name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Wrap(
                                  spacing: 10,
                                  children: data!.genres
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
                          ),
                          const SizedBox(width: 5),
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned.fill(
                                  child: CircularProgressIndicator(
                                    value: data!.voteAverage / 10,
                                    backgroundColor: Colors.white38,
                                  ),
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: data!.voteAverage.toStringAsFixed(1),
                                    children: const [
                                      TextSpan(
                                        text: '\n de 10',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  style: const TextStyle(
                                    fontSize: 24,
                                    height: 1.1,
                                    color: Colors.white,
                                  ),
                                  textScaleFactor: 1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
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
