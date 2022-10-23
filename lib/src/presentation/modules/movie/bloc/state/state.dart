import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/models/media/media.dart';
import '../../../../../domain/models/movie/movie.dart';
import '../../../../../domain/models/performer/performer.dart';

part 'state.freezed.dart';

@freezed
class MovieState with _$MovieState {
  const factory MovieState.loading(String id) = MovieLoading;
  const factory MovieState.loaded({
    required String id,
    required Movie movie,
    required List<Performer>? cast,
    required List<Media>? recomendations,
  }) = MovieLoaded;
  const factory MovieState.failed(String id) = MovieFailed;
}
