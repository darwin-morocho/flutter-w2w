import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/models/tv_show/tv_show.dart';

part 'state.freezed.dart';

@freezed
class TvShowState with _$TvShowState {
  factory TvShowState.loading(int id) = TvShowLoading;
  factory TvShowState.loaded({
    required int id,
    required TvShow show,
  }) = TvShowLoaded;
  factory TvShowState.failed(int id) = TvShowFailed;
}
