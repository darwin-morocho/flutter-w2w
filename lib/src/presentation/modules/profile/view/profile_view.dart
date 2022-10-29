import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import 'package:go_router/go_router.dart';

import '../../../../../generated/translations.g.dart';
import '../../../../../register/register_repositories.dart';
import '../../../global/app_colors.dart';
import '../../../global/app_icons.dart';
import '../../../global/blocs/app_theme/bloc.dart';
import '../../../global/blocs/favorites/bloc.dart';
import '../../../global/blocs/session/session_bloc.dart';
import '../../../router/router.dart';

class ProfileView extends ConsumerWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final SessionBLoC sessionBLoC = ref.watch(
      sessionProvider.select(
        (_) => _.user != null,
        booleanCallback: true,
      ),
    );
    final user = sessionBLoC.user;

    final AppThemeBloc themeBloc = ref.watch(
      appThemeProvider,
    );

    if (user != null) {
      return Container(
        color: Theme.of(context).backgroundColor,
        child: Column(
          children: [
            AppBar(
              actions: [
                IconButton(
                  onPressed: () async {
                    FavoritesBloc favoritesBloc = favoritesProvider.read;
                    await Repositories.auth.signOut();
                    favoritesBloc.reset();
                    sessionBLoC.setUser(null);
                    context.go(Routes.home);
                  },
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
              title: Text(texts.profile.darkMode),
              value: themeBloc.darkMode,
              onChanged: themeBloc.setDarkMode,
            ),
            ListTile(
              title: Text(texts.profile.language),
              trailing: DropdownButton<Locale>(
                style: Theme.of(context).textTheme.bodyText1,
                dropdownColor: context.isDarkMode ? AppColors.dark700 : Colors.white,
                value: TranslationProvider.of(context).locale.flutterLocale,
                items: LocaleSettings.supportedLocales
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e.languageCode),
                      ),
                    )
                    .toList(),
                onChanged: (locale) {
                  if (locale != null) {
                    final appLocale = AppLocale.values.firstWhere(
                      (e) => e.languageCode == locale.languageCode,
                    );
                    if (!appLocale.sameLocale(LocaleSettings.currentLocale)) {
                      Repositories.language.setLanguageCode(
                        appLocale.languageCode,
                      );
                      LocaleSettings.setLocale(appLocale);
                    }
                  }
                },
              ),
            ),
          ],
        ),
      );
    }
    return Container();
  }
}
