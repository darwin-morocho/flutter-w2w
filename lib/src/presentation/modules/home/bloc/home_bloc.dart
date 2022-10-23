import '../../../../domain/repositories/trending_repository.dart';
import '../../../../domain/repositories/youtube_repository.dart';
import '../../../global/notifiers/state_notifier.dart';
import 'state/home_state.dart';

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
