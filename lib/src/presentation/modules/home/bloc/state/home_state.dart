import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/models/media/media.dart';
import '../../../../../domain/models/trailer/trailer.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = HomeLoading;
  const factory HomeState.failed() = HomeFailed;
  const factory HomeState.loaded({
    required List<Media> trendingList,
    required List<Trailer> trailers,
  }) = HomeLoaded;
}
