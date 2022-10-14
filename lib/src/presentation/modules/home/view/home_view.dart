import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../register/register_repositories.dart';
import '../../../global/blocs/app_configuration/app_configuration_bloc.dart';
import '../bloc/home_bloc.dart';
import '../bloc/state/home_state.dart';
import 'widgets/trending_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
   
    final genres = Provider.of<AppConfigurationBLoC>(context, listen: false).genres;

    return ChangeNotifierProvider(
      create: (_) => HomeBLoC(
        const HomeState.loading(),
        trendingRepository: Repositories.trending, 
      )..init(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: genres.values
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Chip(
                            label: Text(e.name),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              Consumer<HomeBLoC>(
                builder: (_, bloc, __) => bloc.state.map(
                  loading: (_) => const CircularProgressIndicator(),
                  failed: (_) => Container(),
                  loaded: (state) => TrendingList(
                    trendingList: state.trendingList,
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
