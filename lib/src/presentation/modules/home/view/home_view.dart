import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../register/register_repositories.dart';
import '../../../global/blocs/app_configuration/app_configuration_bloc.dart';
import '../../../global/widgets/scroll_view.dart';
import '../bloc/home_bloc.dart';
import '../bloc/state/home_state.dart';
import 'widgets/trailers.dart';
import 'widgets/trending_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final genres = Provider.of<AppConfigurationBLoC>(context, listen: false).genres.values;

    return ChangeNotifierProvider(
      create: (_) => HomeBLoC(
        const HomeState.loading(),
        trendingRepository: Repositories.trending,
        youtubeRepository: Repositories.youtube,
      )..init(),
      child: Scaffold(
        body: SafeArea(
          child: MyScrollView(
            children: [
              const SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    genres.length,
                    (index) {
                      final genre = genres.elementAt(index);
                      return Padding(
                        padding: const EdgeInsets.all(4).copyWith(
                          left: index == 0 ? 20 : 4,
                        ),
                        child: Chip(
                          label: Text(
                            genre.name,
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Consumer<HomeBLoC>(
                builder: (_, bloc, __) => bloc.state.map(
                  loading: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  failed: (_) => Container(),
                  loaded: (state) => Column(
                    children: [
                      TrendingList(
                        trendingList: state.trendingList,
                      ),
                      Trailers(trailers: state.trailers),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
