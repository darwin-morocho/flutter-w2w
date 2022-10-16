import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../../register/register_repositories.dart';
import '../../../../domain/models/media/media.dart';
import '../../../global/widgets/scroll_view.dart';
import '../../../router/auth_guard.dart';
import '../../../router/router.dart';
import '../bloc/movie_bloc.dart';
import '../bloc/state/state.dart';
import 'widgets/app_bar.dart';
import 'widgets/banner.dart';
import 'widgets/loader.dart';
import 'widgets/recommendations.dart';

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

        return Container(
          color: Theme.of(context).backgroundColor,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  layoutBuilder: (currentChild, previousChildren) => Stack(
                    children: <Widget>[
                      ...previousChildren,
                      if (currentChild != null) currentChild,
                    ],
                  ),
                  child: state.map(
                    loading: (_) => MovieLoader(media: media),
                    loaded: (state) => MyScrollView(
                      children: [
                        MovieBanner(
                          path: state.movie.backdropPath,
                          movie: state.movie,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20).copyWith(
                            bottom: 0,
                          ),
                          child: const Text(
                            'Synopsis',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20).copyWith(top: 5),
                          child: Text(
                            state.movie.overview,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const MovieRecomendations(),
                      ],
                    ),
                    failed: (_) => Container(),
                  ),
                ),
              ),
              const MovieAppBar(),
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
