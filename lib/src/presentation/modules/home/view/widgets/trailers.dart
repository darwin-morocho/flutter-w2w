import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../../core/platform.dart';
import '../../../../../domain/models/trailer/trailer.dart';
import '../../../../global/app_colors.dart';
import '../../../youtube_player/view/youtube_player_view.dart';

class Trailers extends StatefulWidget {
  const Trailers({super.key, required this.trailers});
  final List<Trailer> trailers;

  @override
  State<Trailers> createState() => _TrailersState();
}

class _TrailersState extends State<Trailers> {
  PageController? _controller;

  late double _width;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _controller?.dispose();
    _width = MediaQuery.of(context).size.width;

    _controller = PageController(
      viewportFraction: _width >= 640 ? 0.4 : 1,
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.trailers.isNotEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 10),
            child: Text(
              'Coming Soon',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: _width >= 640 ? 14 / 3 : 16 / 8,
            child: PageView.builder(
              controller: _controller,
              padEnds: false,
              itemBuilder: (_, index) {
                final trailer = widget.trailers[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {
                      if (isAndroid || isIOS) {
                        Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                            builder: (_) => YoutubePlayerView(
                              trailer: trailer,
                            ),
                          ),
                        );
                      } else {
                        launchUrlString(
                          'https://www.youtube.com/embed/${trailer.videoId}',
                        );
                      }
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Hero(
                              tag: 'trailer-${trailer.videoId}',
                              child: ExtendedImage.network(
                                trailer.thumbnail,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    AppColors.dark.withOpacity(0.9),
                                    AppColors.dark.withOpacity(0.3),
                                    Colors.transparent,
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            right: 10,
                            child: Text(
                              trailer.title,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: widget.trailers.length,
            ),
          ),
          AnimatedBuilder(
            animation: _controller!,
            builder: (_, __) => Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${(_controller!.page ?? 0).toInt() + 1}/50',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      );
    }
    return Container();
  }
}
