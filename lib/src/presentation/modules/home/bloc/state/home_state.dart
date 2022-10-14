import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/models/media/media.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = HomeLoading;
  const factory HomeState.failed() = HomeFailed;
  const factory HomeState.loaded({
    required List<Media> trendingList,
  }) = HomeLoaded;
}
