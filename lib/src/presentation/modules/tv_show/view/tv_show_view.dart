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
import '../../movie/view/widgets/loader.dart';
import '../bloc/bloc.dart';
import '../bloc/state/state.dart';
import 'widgets/app_bar.dart';
import 'widgets/seasons.dart';

class TvShowView extends StatelessWidget {
  const TvShowView({
    super.key,
    required this.id,
    this.media,
  });

  final int id;
  final Media? media;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TvShowBloc(
        TvShowLoading(id),
        tvShowsRepository: Repositories.tv,
      )..init(),
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: Stack(
          children: [
            Positioned.fill(
              child: Consumer<TvShowBloc>(
                builder: (_, bloc, __) => bloc.state.maybeMap(
                  loaded: (state) {
                    final isLandscape = context.isLandscape;
                    final banner = MediaBanner(
                      path: state.show.backdropPath,
                      data: BannerData(
                        genres: state.show.genres,
                        name: state.show.name,
                        voteAverage: state.show.voteAverage,
                      ),
                    );

                    final details = Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (isLandscape) const SizedBox(height: kToolbarHeight),
                        MediaOverview(text: state.show.overview),
                        TvShowSeasons(seasons: state.show.seasons),
                        const SizedBox(height: 120),
                      ],
                    );

                    if (!isLandscape) {
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
                  orElse: () => MovieLoader(media: media),
                ),
              ),
            ),
            const TvShowAppBar(),
          ],
        ),
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
        return TvShowView(id: int.parse(id), media: media);
      },
    );
  }
}
