import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';

import '../../../../../domain/models/enums.dart';
import '../../../../../domain/models/media/media.dart';
import '../../../../global/blocs/favorites/bloc.dart';
import '../../../../global/blocs/favorites/state/state.dart';
import '../../../../global/provider/tag.dart';
import '../../../../global/widgets/loader.dart';
import '../../bloc/bloc.dart';
import '../../bloc/state/state.dart';

class TvShowAppBar extends ConsumerWidget {
  const TvShowAppBar({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final TvShowBloc bloc = ref.watch(
      tvShowProvider.find(
        TagProvider.of(context),
      ),
    );

    final FavoritesBloc favoritesBloc = ref.watch(
      favoritesProvider,
    );

    final state = bloc.state;
    final favoritesState = favoritesBloc.state;

    Media? media;

    if (state is TvShowLoaded && favoritesState is FavoritesLoaded) {
      final show = state.show;

      media = Media(
        id: show.id,
        adult: false,
        overview: show.overview,
        popularity: 0,
        title: show.name,
        originalTitle: show.name,
        backdropPath: show.backdropPath,
        posterPath: show.posterPath,
        genreIds: show.genres.map((e) => e.id).toList(),
        voteAverage: show.voteAverage,
        voteCount: show.voteCount,
        firstAirDate: show.firstAirDate,
        mediaType: MediaType.tv,
      );
    }

    bool inFavorite = false;

    if (media != null) {
      final index = favoritesBloc.loadedState.tvShows.indexWhere(
        (e) => e.id == media!.id,
      );
      inFavorite = index != -1;
    }

    return Positioned(
      left: 0,
      right: 0,
      top: 0,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              Colors.transparent,
            ],
          ),
        ),
        child: AppBar(
          leading: const BackButton(
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          actions: [
            if (media != null)
              IconButton(
                onPressed: () => _onPressed(
                  context: context,
                  media: media!,
                  inFavorite: inFavorite,
                ),
                icon: Icon(
                  inFavorite ? Icons.favorite : Icons.favorite_outline,
                  color: Colors.white,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _onPressed({
    required BuildContext context,
    required Media media,
    required bool inFavorite,
  }) async {
    final loader = Loader.of(context);
    loader.show();
    final FavoritesBloc favoritesBloc = favoritesProvider.read;
    final future = inFavorite ? favoritesBloc.remove(media) : favoritesBloc.add(media);
    final saved = await future;
    loader.dismiss();
  }
}
