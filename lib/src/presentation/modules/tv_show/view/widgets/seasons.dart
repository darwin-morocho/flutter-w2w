import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/env.dart';
import '../../../../../domain/models/tv_show/tv_show.dart';

class TvShowSeasons extends StatelessWidget {
  const TvShowSeasons({super.key, required this.seasons});
  final List<Season> seasons;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20).copyWith(
            bottom: 0,
          ),
          child: const Text(
            'Seasons',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GridView.count(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 10 / 16,
            children: seasons
                .map(
                  (e) => Column(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: ExtendedImage.network(
                            Env.getImageUrl(e.posterPath),
                          ),
                        ),
                      ),
                      Text(
                        e.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
