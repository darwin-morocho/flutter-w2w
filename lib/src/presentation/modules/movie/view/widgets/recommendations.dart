import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:path/path.dart' as path;

import '../../../../../../generated/translations.g.dart';
import '../../../../../core/env.dart';
import '../../../../../domain/models/media/media.dart';
import '../../../../router/router.dart';

class MovieRecomendations extends StatelessWidget {
  const MovieRecomendations({super.key, required this.recommendations});

  final List<Media> recommendations;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20).copyWith(
            bottom: 5,
            top: 10,
          ),
          child: Text(
            texts.movie.recommendations,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              final media = recommendations[index];
              return Padding(
                padding: EdgeInsets.only(
                  right: 10,
                  left: index == 0 ? 20 : 0,
                ),
                child: InkWell(
                  onTap: () {
                    final basePath = Uri.parse(GoRouter.of(context).location).pathSegments.first;

                    context.push(
                      path.join(
                        '/$basePath',
                        Routes.movie.builder(media.id),
                      ),
                      extra: media,
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      width: 120,
                      child: ExtendedImage.network(
                        Env.getImageUrl(media.posterPath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            },
            itemCount: recommendations.length,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
