import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../global/app_icons.dart';
import '../../../global/blocs/app_theme/bloc.dart';
import '../../../global/blocs/session/session_bloc.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final SessionBLoC sessionBLoC = context.watch();
    final user = sessionBLoC.user;

    final AppThemeBloc themeBloc = context.watch();

    if (user != null) {
      return Container(
        color: Theme.of(context).backgroundColor,
        child: Column(
          children: [
            AppBar(
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    AppIcons.logout,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Icon(
              AppIcons.person_filled,
              size: 50,
            ),
            Text(user.username),
            const SizedBox(height: 30),
            SwitchListTile(
              title: const Text('Dark mode'),
              value: themeBloc.darkMode,
              onChanged: themeBloc.setDarkMode,
            ),
          ],
        ),
      );
    }
    return Container();
  }
}
