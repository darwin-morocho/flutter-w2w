import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/env.dart';
import '../../../../../../domain/models/trending/trending.dart';

class TrendingList extends StatefulWidget {
  const TrendingList({super.key, required this.trendingList});

  final List<Trending> trendingList;

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
                    child: ExtendedImage.network(
                      Env.getImageUrl(item.posterPath),
                      fit: BoxFit.cover,
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
