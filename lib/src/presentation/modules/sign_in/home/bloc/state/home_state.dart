import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../domain/models/trending/trending.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = HomeLoading;
  const factory HomeState.failed() = HomeFailed;
  const factory HomeState.loaded({
    required List<Trending> trendingList,
  }) = HomeLoaded;
}
