import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../domain/models/media/media.dart';
import '../../../router/auth_guard.dart';
import '../../../router/router.dart';

class TvShowView extends StatelessWidget {
  const TvShowView({
    super.key,
    required this.id,
    this.media,
  });

  final String id;
  final Media? media;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Column(
        children: [
          AppBar(),
        ],
      ),
    );
  }

  static GoRoute get route {
    return GoRoute(
      path: Routes.tv.path,
      builder: (_, state) {
        final id = state.params['id']!;
        final extra = state.extra;
        Media? media;
        if (extra is Media) {
          media = extra;
        }
        return TvShowView(id: id, media: media);
      },
      redirect: authGuard,
    );
  }
}
