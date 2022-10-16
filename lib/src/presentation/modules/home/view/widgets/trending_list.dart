import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:path/path.dart';

import '../../../../../core/env.dart';
import '../../../../../domain/models/enums.dart';
import '../../../../../domain/models/media/media.dart';
import '../../../../router/router.dart';

class TrendingList extends StatefulWidget {
  const TrendingList({super.key, required this.trendingList});

  final List<Media> trendingList;

  @override
  State<TrendingList> createState() => _TrendingListState();
}

class _TrendingListState extends State<TrendingList> {
  final _controller = PageController(
    viewportFraction: 0.5,
  );

  double _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(
      () {
        setState(() {
          _currentPage = _controller.page!;
        });
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20, bottom: 10),
          child: Text(
            'Trending Now',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 300,
          child: PageView.builder(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              double scale = 1.0;
              final item = widget.trendingList[index];
              final page = _currentPage;
              scale = (page - index).abs();
              scale = (1 - scale).clamp(0.8, 1.0);

              return Transform.scale(
                scale: scale,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    width: 200,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Hero(
                            tag: 'movie-${item.id}',
                            child: ExtendedImage.network(
                              Env.getImageUrl(item.posterPath),
                              fit: BoxFit.cover,
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
                ),
              );
            },
            itemCount: widget.trendingList.length,
          ),
        ),
      ],
    );
  }
}
