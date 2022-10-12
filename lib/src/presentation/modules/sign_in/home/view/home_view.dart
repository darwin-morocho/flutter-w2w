import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../../../../register/register_repositories.dart';
import '../../../../global/blocs/app_configuration/app_configuration_bloc.dart';
import '../../../../global/blocs/session/session_bloc.dart';
import '../../../../router/router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final SessionBLoC sessionBLoC = context.watch();
    final genres = context.watch<AppConfigurationBLoC>().genres;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: genres
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
            Text(sessionBLoC.user!.username),
            MaterialButton(
              onPressed: () async {
                await Repositories.auth.signOut();
                sessionBLoC.setUser(null, notify: false);
                // ignore: use_build_context_synchronously
                context.go(Routes.signIn);
              },
              child: const Text('sign out'),
            ),
          ],
        ),
      ),
    );
  }
}
