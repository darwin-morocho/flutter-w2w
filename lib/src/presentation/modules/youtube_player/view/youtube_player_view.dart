import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../domain/models/trailer/trailer.dart';

class YoutubePlayerView extends StatefulWidget {
  const YoutubePlayerView({super.key, required this.trailer});
  final Trailer trailer;

  @override
  State<YoutubePlayerView> createState() => _YoutubePlayerViewState();
}

class _YoutubePlayerViewState extends State<YoutubePlayerView> {
  late final YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ],
    );

    _controller = YoutubePlayerController(
      initialVideoId: widget.trailer.videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        forceHD: true,
      ),
    );
  }

  @override
  void dispose() {
    SystemChrome.restoreSystemUIOverlays();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'trailer-${widget.trailer.videoId}',
      child: OrientationBuilder(
        builder: (_, orientation) => Scaffold(
          backgroundColor: Colors.black,
          appBar: orientation == Orientation.portrait
              ? AppBar(
                  backgroundColor: Colors.transparent,
                )
              : null,
          body: YoutubePlayerBuilder(
            player: YoutubePlayer(
              controller: _controller,
            ),
            builder: (context, player) {
              return Center(child: player);
            },
          ),
        ),
      ),
    );
  }
}
