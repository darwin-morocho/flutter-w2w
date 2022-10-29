import 'package:flutter_meedu/meedu.dart';

import '../../../../../register/register_repositories.dart';
import '../../../../domain/repositories/movies_repository.dart';
import 'state/state.dart';

final movieProvider = StateProvider.withTag(
  (ref) => MovieBLoC(
    MovieLoading(ref.arguments),
    moviesRepository: Repositories.movies,
  )..init(),
);

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
    state = await result.when(
      left: (_) async => MovieFailed(state.id),
      right: (movie) async {
        final cast = await moviesRepository.getMovieCredits(
          movie.id.toString(),
        );
        final recommendations = await moviesRepository.getMovieRecommendations(
          movie.id.toString(),
        );

        return MovieLoaded(
          id: state.id,
          movie: movie,
          cast: cast.when(left: (_) => null, right: (value) => value),
          recomendations: recommendations.when(left: (_) => null, right: (value) => value),
        );
      },
    );
  }
}
