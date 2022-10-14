import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/models/movie/movie.dart';

part 'state.freezed.dart';

@freezed
class MovieState with _$MovieState {
  const factory MovieState.loading(String id) = MovieLoading;
  const factory MovieState.loaded({
    required String id,
    required Movie movie,
  }) = MovieLoaded;
  const factory MovieState.failed(String id) = MovieFailed;
}
