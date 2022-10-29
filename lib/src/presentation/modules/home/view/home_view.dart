import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';

import '../../../global/blocs/app_configuration/app_configuration_bloc.dart';
import '../../../global/widgets/scroll_view.dart';
import '../bloc/home_bloc.dart';
import 'widgets/trailers.dart';
import 'widgets/trending_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final genres = appConfigurationProvider.read.genres.values;

    return Scaffold(
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
            Consumer(
              builder: (_, ref, __) {
                final bloc = ref.watch(homeProvider);
                return bloc.state.map(
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
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
