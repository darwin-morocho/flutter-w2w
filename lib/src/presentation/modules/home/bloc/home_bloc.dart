import '../../../../domain/repositories/trending_repository.dart';
import '../../../global/notifiers/state_notifier.dart';
import 'state/home_state.dart';

class HomeBLoC extends StateNotifier<HomeState> {
  HomeBLoC(
    super.initialState, {
    required this.trendingRepository,
  });

  final TrendingRepository trendingRepository;

  Future<void> init() async {
    if (state is! HomeLoading) {
      state = const HomeLoading();
    }
    final result = await trendingRepository.getTrendingList();
    state = result.when(
      left: (_) => const HomeFailed(),
      right: (list) => HomeLoaded(trendingList: list),
    );
  }
}
