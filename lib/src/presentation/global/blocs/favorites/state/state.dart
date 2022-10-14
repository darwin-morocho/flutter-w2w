import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/models/media/media.dart';

part 'state.freezed.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.mustBeInitialized() = FavoritesMustBeInitialized;
  const factory FavoritesState.loading() = FavoritesLoading;
  const factory FavoritesState.failed() = FavoritesFailed;
  const factory FavoritesState.loaded({
    required List<Media> movies,
    required List<Media> tvShows,
  }) = FavoritesLoaded;
}
