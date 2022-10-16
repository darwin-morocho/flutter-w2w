import '../../../../domain/models/enums.dart';
import '../../../../domain/models/media/media.dart';
import '../../../../domain/repositories/account_repository.dart';
import '../../notifiers/state_notifier.dart';
import 'state/state.dart';

class FavoritesBloc extends StateNotifier<FavoritesState> {
  FavoritesBloc(
    super.initialState, {
    required this.accountRepository,
  });

  final AccountRepository accountRepository;

  FavoritesLoaded get loadedState => state as FavoritesLoaded;

  Future<void> init() async {
    if (state is! FavoritesLoading) {
      state = const FavoritesLoading();
    }

    final result = await accountRepository.favorites;

    state = result.when(
      left: (_) => const FavoritesFailed(),
      right: (response) => FavoritesLoaded(
        movies: response.movies,
        tvShows: response.tvShows,
      ),
    );
  }

  Future<bool> add(Media media) async {
    final result = await accountRepository.markAsFavorite(
      mediaId: media.id,
      favorite: true,
      type: media.mediaType,
    );
    return result.when(
      left: (_) => false,
      right: (_) {
        if (media.mediaType == MediaType.movie) {
          state = loadedState.copyWith(
            movies: [media, ...loadedState.movies],
          );
        } else {
          state = loadedState.copyWith(
            tvShows: [media, ...loadedState.tvShows],
          );
        }
        return true;
      },
    );
  }

  Future<bool> remove(Media media) async {
    final result = await accountRepository.markAsFavorite(
      mediaId: media.id,
      favorite: false,
      type: media.mediaType,
    );
    return result.when(
      left: (_) => false,
      right: (_) {
        if (media.mediaType == MediaType.movie) {
          final movies = [...loadedState.movies];
          final index = movies.indexWhere(
            (e) => e.id == media.id,
          );
          movies.removeAt(index);
          state = loadedState.copyWith(
            movies: movies,
          );
        } else {
          final tvShows = [...loadedState.tvShows];
          final index = tvShows.indexWhere(
            (e) => e.id == media.id,
          );
          tvShows.removeAt(index);
          state = loadedState.copyWith(
            tvShows: tvShows,
          );
        }
        return true;
      },
    );
  }
}
