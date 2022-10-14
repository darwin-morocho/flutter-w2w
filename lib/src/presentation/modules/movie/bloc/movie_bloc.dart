import '../../../../domain/repositories/movies_repository.dart';
import '../../../global/notifiers/state_notifier.dart';
import 'state/state.dart';

class MovieBLoC extends StateNotifier<MovieState> {
  MovieBLoC(
    super.initialState, {
    required this.moviesRepository,
  });
  final MoviesRepository moviesRepository;

  Future<void> init() async {
    if (state is! MovieLoading) {
      state = MovieLoading(state.id);
    }

    final result = await moviesRepository.getMovie(state.id);
    state = result.when(
      left: (_) => MovieFailed(state.id),
      right: (movie) => MovieLoaded(id: state.id, movie: movie),
    );
  }
}
