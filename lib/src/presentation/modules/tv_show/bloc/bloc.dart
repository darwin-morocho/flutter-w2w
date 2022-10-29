import 'package:flutter_meedu/meedu.dart';

import '../../../../../register/register_repositories.dart';
import '../../../../domain/repositories/tv_shows_repository.dart';
import 'state/state.dart';

final tvShowProvider = StateProvider.withTag(
  (ref) => TvShowBloc(
    TvShowLoading(ref.arguments),
    tvShowsRepository: Repositories.tv,
  )..init(),
);

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
