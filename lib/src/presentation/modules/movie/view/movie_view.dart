import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../../register/register_repositories.dart';
import '../../../../core/env.dart';
import '../../../../domain/models/media/media.dart';
import '../../../router/auth_guard.dart';
import '../../../router/router.dart';
import '../bloc/movie_bloc.dart';
import '../bloc/state/state.dart';

class MovieView extends StatelessWidget {
  const MovieView({
    super.key,
    required this.id,
    this.media,
  });
  final String id;
  final Media? media;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MovieBLoC(
        MovieLoading(id),
        moviesRepository: Repositories.movies,
      )..init(),
      builder: (context, __) {
        final MovieBLoC bloc = context.watch();
        final state = bloc.state;

        return SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              AppBar(),
              state.map(
                loading: (_) => const CircularProgressIndicator(),
                loaded: (state) => Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: ExtendedImage.network(
                          Env.getImageUrl(state.movie.backdropPath),
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Wrap(
                        children: state.movie.genres
                            .map(
                              (e) => Chip(
                               padding: const EdgeInsets.all(4),
                                label: Text(
                                  e.name,
                                ),
                              ),
                            )
                            .toList(),
                      )
                    ],
                  ),
                ),
                failed: (_) => Container(),
              ),
            ],
          ),
        );
      },
    );
  }

  static GoRoute get route {
    return GoRoute(
      path: Routes.movie.path,
      builder: (_, state) {
        final id = state.params['id']!;
        final extra = state.extra;
        Media? media;
        if (extra is Media) {
          media = extra;
        }
        return MovieView(id: id, media: media);
      },
      redirect: authGuard,
    );
  }
}
