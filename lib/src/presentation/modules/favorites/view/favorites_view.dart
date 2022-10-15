import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';

import '../../../../core/env.dart';
import '../../../../domain/models/enums.dart';
import '../../../../domain/models/genre/genre.dart';
import '../../../../domain/models/media/media.dart';
import '../../../global/blocs/app_configuration/app_configuration_bloc.dart';
import '../../../global/blocs/favorites/bloc.dart';
import '../../../router/router.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    final genres = context.read<AppConfigurationBLoC>().genres;
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: SafeArea(
        bottom: false,
        child: DefaultTabController(
          length: 2,
          child: Consumer<FavoritesBloc>(
            builder: (_, bloc, __) => bloc.state.maybeMap(
              loaded: (state) => Column(
                children: [
                  const TabBar(
                    labelColor: Colors.black,
                    tabs: [
                      Tab(
                        text: 'Movies',
                      ),
                      Tab(
                        text: 'TV',
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        _MediaList(
                          items: state.movies,
                          genres: genres,
                        ),
                        _MediaList(
                          items: state.tvShows,
                          genres: genres,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              orElse: () => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _MediaList extends StatelessWidget {
  const _MediaList({
    required this.items,
    required this.genres,
  });
  final List<Media> items;
  final Map<int, Genre> genres;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) {
        final media = items[index];
        return Padding(
          padding: const EdgeInsets.all(8.0).copyWith(
            top: index == 0 ? 20 : 4,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Material(
              color: const Color(0xfff2f2f2),
              child: InkWell(
                onTap: () {
                  if (media.mediaType == MediaType.movie) {
                    context.push(
                      join(
                        Routes.favorites,
                        Routes.movie.builder(
                          media.id,
                        ),
                      ),
                      extra: media,
                    );
                  }
                },
                child: SizedBox(
                  height: 120,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 80,
                        child: ExtendedImage.network(
                          Env.getImageUrl(media.posterPath),
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 8),
                            Text(
                              media.title,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Wrap(
                              spacing: 5,
                              runSpacing: 3,
                              children: media.genreIds.map(
                                (id) {
                                  final genre = genres[id]!;
                                  return Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black38,
                                      ),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    padding: const EdgeInsets.symmetric(horizontal: 5),
                                    child: Text(
                                      genre.name,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  );
                                },
                              ).toList(),
                            ),
                            const SizedBox(height: 5),
                            Flexible(
                              child: Text(
                                media.overview,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
      itemCount: items.length,
    );
  }
}
