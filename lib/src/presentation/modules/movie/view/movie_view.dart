import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../../register/register_repositories.dart';
import '../../../../domain/models/media/media.dart';
import '../../../global/build_context_extension.dart';
import '../../../global/widgets/media/media_banner.dart';
import '../../../global/widgets/media/media_overview.dart';
import '../../../global/widgets/scroll_view.dart';
import '../../../router/router.dart';
import '../bloc/movie_bloc.dart';
import '../bloc/state/state.dart';
import 'widgets/app_bar.dart';
import 'widgets/cast.dart';
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
                    loaded: (state) => Builder(
                      builder: (context) {
                        final banner = MediaBanner(
                          path: state.movie.backdropPath,
                          data: BannerData(
                            name: state.movie.title,
                            genres: state.movie.genres,
                            voteAverage: state.movie.voteAverage,
                          ),
                        );

                        final isPortrait = !context.isLandscape;

                        final details = Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (!isPortrait) const SizedBox(height: kToolbarHeight),
                            if (state.cast != null) MovieCast(cast: state.cast!),
                            MediaOverview(text: state.movie.overview),
                            if (state.recomendations != null)
                              MovieRecomendations(
                                recommendations: state.recomendations!,
                              ),
                            const SizedBox(height: 100),
                          ],
                        );

                        if (isPortrait) {
                          return MyScrollView(
                            children: [
                              banner,
                              details,
                            ],
                          );
                        }

                        return Row(
                          children: [
                            Expanded(
                              child: banner,
                            ),
                            Expanded(
                              child: MyScrollView(
                                children: [details],
                              ),
                            ),
                          ],
                        );
                      },
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
      parentNavigatorKey: shellNavigatorKey,
      builder: (_, state) {
        final id = state.params['id']!;
        final extra = state.extra;
        Media? media;
        if (extra is Media) {
          media = extra;
        }
        return MovieView(id: id, media: media);
      },
    );
  }
}
