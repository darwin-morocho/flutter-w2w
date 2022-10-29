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
import '../../movie/view/widgets/loader.dart';
import '../bloc/bloc.dart';
import 'widgets/app_bar.dart';
import 'widgets/seasons.dart';

class TvShowView extends StatefulWidget {
  const TvShowView({
    super.key,
    required this.id,
    this.media,
  });

  final int id;
  final Media? media;

  @override
  State<TvShowView> createState() => _TvShowViewState();

  static GoRoute get route {
    return GoRoute(
      path: Routes.tv.path,
      builder: (_, state) {
        final id = int.parse(state.params['id']!);
        final extra = state.extra;
        Media? media;
        if (extra is Media) {
          media = extra;
        }
        final tag = 'tv-$id';
        tvShowProvider.find(tag).setArguments(id);
        return TagProvider(
          tag: tag,
          child: TvShowView(id: id, media: media),
        );
      },
    );
  }
}

class _TvShowViewState extends State<TvShowView> with InitializedMixin {
  late final bool _mustPop;
  late final String _tagName;

  @override
  void initialized() {
    _tagName = TagProvider.of(context);
    _mustPop = !tvShowProvider.find(_tagName).mounted;
  }

  @override
  void dispose() {
    if (_mustPop) {
      tvShowProvider.find(_tagName).dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Stack(
        children: [
          Positioned.fill(
            child: Consumer(
              builder: (_, ref, __) {
                final bloc = ref.watch(
                  tvShowProvider.find(_tagName),
                );
                return bloc.state.maybeMap(
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
                  orElse: () => MovieLoader(media: widget.media),
                );
              },
            ),
          ),
          const TvShowAppBar(),
        ],
      ),
    );
  }
}
