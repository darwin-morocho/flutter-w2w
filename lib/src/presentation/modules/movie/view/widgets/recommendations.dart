import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:path/path.dart' as path;
import 'package:provider/provider.dart';

import '../../../../../../register/register_repositories.dart';
import '../../../../../core/either/either.dart';
import '../../../../../core/env.dart';
import '../../../../../domain/failures/http_request/http_request_failure.dart';
import '../../../../../domain/models/media/media.dart';
import '../../../../router/router.dart';
import '../../bloc/movie_bloc.dart';

class MovieRecomendations extends StatefulWidget {
  const MovieRecomendations({super.key});

  @override
  State<MovieRecomendations> createState() => _MovieRecomendationsState();
}

class _MovieRecomendationsState extends State<MovieRecomendations> {
  late final Future<Either<HttpRequestFailure, List<Media>>> future;
  @override
  void initState() {
    super.initState();
    final movieId = context.read<MovieBLoC>().state.id;
    future = Repositories.movies.getMovieRecommendations(movieId);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Either<HttpRequestFailure, List<Media>>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.data != null && snapshot.data!.isRight) {
          final recommendations = snapshot.data!.right;
          if (recommendations.isEmpty) {
            return Container();
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20).copyWith(
                  bottom: 5,
                  top: 10,
                ),
                child: const Text(
                  'Recommendations',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    final media = recommendations[index];
                    return Padding(
                      padding: EdgeInsets.only(
                        right: 10,
                        left: index == 0 ? 20 : 0,
                      ),
                      child: InkWell(
                        onTap: () {
                          final basePath =
                              Uri.parse(GoRouter.of(context).location).pathSegments.first;

                          context.push(
                            path.join(
                              '/$basePath',
                              Routes.movie.builder(media.id),
                            ),
                            extra: media,
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            width: 120,
                            child: ExtendedImage.network(
                              Env.getImageUrl(media.posterPath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: recommendations.length,
                ),
              ),
              const SizedBox(height: 20),
            ],
          );
        }
        return Container();
      },
    );
  }
}
