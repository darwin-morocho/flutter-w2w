import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:path/path.dart';

import '../../../../../../generated/translations.g.dart';
import '../../../../../core/env.dart';
import '../../../../../domain/models/enums.dart';
import '../../../../../domain/models/media/media.dart';
import '../../../../global/build_context_extension.dart';
import '../../../../router/router.dart';

class TrendingList extends StatelessWidget {
  const TrendingList({super.key, required this.trendingList});

  final List<Media> trendingList;

  @override
  Widget build(BuildContext context) {
    final isLargeScreen = context.isLandscape;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 10),
          child: Text(
            texts.home.trendingNow,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        AspectRatio(
          aspectRatio: isLargeScreen ? 12 / 2 : 16 / 9,
          child: LayoutBuilder(
            builder: (_, constraints) {
              final width = constraints.maxHeight * 0.7;

              return ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                separatorBuilder: (_, __) => const SizedBox(
                  width: 10,
                ),
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  final item = trendingList[index];
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      width: width,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Hero(
                              tag: 'movie-${item.id}',
                              child: ExtendedImage.network(
                                Env.getImageUrl(item.posterPath),
                                fit: BoxFit.cover,
                                width: width,
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {
                                  final isMovie = item.mediaType == MediaType.movie;

                                  context.push(
                                    join(
                                      Routes.home,
                                      isMovie
                                          ? Routes.movie.builder(item.id)
                                          : Routes.tv.builder(item.id),
                                    ),
                                    extra: item,
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: trendingList.length,
              );
            },
          ),
        ),
      ],
    );
  }
}
