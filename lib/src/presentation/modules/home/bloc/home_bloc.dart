import 'package:flutter_meedu/meedu.dart';

import '../../../../../register/register_repositories.dart';
import '../../../../domain/repositories/trending_repository.dart';
import '../../../../domain/repositories/youtube_repository.dart';
import 'state/home_state.dart';

final homeProvider = StateProvider<HomeBLoC, HomeState>(
  (_) => HomeBLoC(
    const HomeState.loading(),
    trendingRepository: Repositories.trending,
    youtubeRepository: Repositories.youtube,
  )..init(),
);

class HomeBLoC extends StateNotifier<HomeState> {
  HomeBLoC(
    super.initialState, {
    required this.trendingRepository,
    required this.youtubeRepository,
  });

  final TrendingRepository trendingRepository;
  final YoutubeRepository youtubeRepository;

  Future<void> init() async {
    if (state is! HomeLoading) {
      state = const HomeLoading();
    }
    final result = await trendingRepository.getTrendingList();
    state = await result.when(
      left: (_) async => const HomeFailed(),
      right: (list) async {
        final trailers = await youtubeRepository.getTrailers();
        return HomeLoaded(
          trendingList: list,
          trailers: trailers.when(
            left: (_) => [],
            right: (list) => list,
          ),
        );
      },
    );
  }
}
