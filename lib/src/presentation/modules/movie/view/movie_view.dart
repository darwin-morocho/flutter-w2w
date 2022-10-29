import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import 'package:go_router/go_router.dart';

import '../../../../domain/models/media/media.dart';
import '../../../global/mixins/init_mixin.dart';
import '../../../global/provider/tag.dart';
import '../../../global/widgets/media/media_banner.dart';
import '../../../global/widgets/media/media_overview.dart';
import '../../../global/widgets/scroll_view.dart';
import '../../../router/router.dart';
import '../bloc/movie_bloc.dart';
import 'widgets/app_bar.dart';
import 'widgets/cast.dart';
import 'widgets/loader.dart';
import 'widgets/recommendations.dart';

class MovieView extends StatefulWidget {
  const MovieView({
    super.key,
    required this.id,
    this.media,
  });
  final String id;
  final Media? media;

  @override
  State<MovieView> createState() => _MovieViewState();

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
        final tag = 'movie-$id';
        movieProvider.find(tag).setArguments(id);
        return TagProvider(
          tag: tag,
          child: MovieView(id: id, media: media),
        );
      },
    );
  }
}

class _MovieViewState extends State<MovieView> with InitializedMixin {
  late final bool _mustPop;
  late final String _tagName;

  @override
  void initialized() {
    _tagName = TagProvider.of(context);
    _mustPop = !movieProvider.find(_tagName).mounted;
  }

  @override
  void dispose() {
    if (_mustPop) {
      movieProvider.find(_tagName).dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, ___) {
        final MovieBLoC bloc = ref.watch(
          movieProvider.find(_tagName),
        );
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
                    loading: (_) => MovieLoader(media: widget.media),
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
}
