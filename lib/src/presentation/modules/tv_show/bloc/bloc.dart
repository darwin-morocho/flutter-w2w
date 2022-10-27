import '../../../../domain/repositories/tv_shows_repository.dart';
import '../../../global/notifiers/state_notifier.dart';
import 'state/state.dart';

class TvShowBloc extends StateNotifier<TvShowState> {
  TvShowBloc(
    super.initialState, {
    required TvShowsRepository tvShowsRepository,
  }) : _tvShowsRepository = tvShowsRepository;

  final TvShowsRepository _tvShowsRepository;

  Future<void> init() async {
    if (state is! TvShowLoading) {
      state = TvShowLoading(state.id);
    }

    final result = await _tvShowsRepository.getById(state.id);

    state = result.when(
      left: (_) => TvShowFailed(state.id),
      right: (value) => TvShowLoaded(
        id: state.id,
        show: value,
      ),
    );
  }
}
