import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../domain/models/enums.dart';
import '../../../../../domain/models/media/media.dart';
import '../../../../global/blocs/favorites/bloc.dart';
import '../../../../global/blocs/favorites/state/state.dart';
import '../../../../global/widgets/loader.dart';
import '../../bloc/movie_bloc.dart';
import '../../bloc/state/state.dart';

class MovieAppBar extends StatelessWidget {
  const MovieAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final MovieBLoC movieBloc = context.watch();
    final FavoritesBloc favoritesBloc = context.watch();

    final movieState = movieBloc.state;
    final favoritesState = favoritesBloc.state;

    Media? media;

    if (movieState is MovieLoaded && favoritesState is FavoritesLoaded) {
      final movie = (movieBloc.state as MovieLoaded).movie;

      media = Media(
        id: movie.id,
        adult: movie.adult,
        overview: movie.overview,
        popularity: movie.popularity,
        title: movie.title,
        originalTitle: movie.originalTitle,
        backdropPath: movie.backdropPath,
        posterPath: movie.posterPath,
        genreIds: movie.genres.map((e) => e.id).toList(),
        voteAverage: movie.voteAverage,
        voteCount: movie.voteCount,
        firstAirDate: movie.releaseDate,
        mediaType: MediaType.movie,
      );
    }

    bool inFavorite = false;

    if (media != null) {
      final index = favoritesBloc.loadedState.movies.indexWhere(
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
    final FavoritesBloc favoritesBloc = context.read();
    final future = inFavorite ? favoritesBloc.remove(media) : favoritesBloc.add(media);
    final saved = await future;
    loader.dismiss();
  }
}
