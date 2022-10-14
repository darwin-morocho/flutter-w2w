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
    state = const FavoritesLoaded(
      movies: [],
      tvShows: [],
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
            movies: [...loadedState.movies, media],
          );
        } else {
          state = loadedState.copyWith(
            tvShows: [...loadedState.tvShows, media],
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
          movies.remove(media);
          state = loadedState.copyWith(
            movies: movies,
          );
        } else {
          final tvShows = [...loadedState.tvShows];
          tvShows.remove(media);
          state = loadedState.copyWith(
            tvShows: tvShows,
          );
        }
        return true;
      },
    );
  }
}
