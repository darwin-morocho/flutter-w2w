import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../router/router.dart';
import '../app_colors.dart';
import '../app_icons.dart';
import '../blocs/app_theme/bloc.dart';
import '../blocs/favorites/bloc.dart';
import '../mixins/after_first_layout.dart';

const _paths = [
  Routes.home,
  Routes.favorites,
  Routes.profile,
];

class MainScaffold extends StatefulWidget {
  const MainScaffold({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> with AfterFirstLayout {
  String get _path => '/${Uri.parse(GoRouter.of(context).location).pathSegments.first}';

  @override
  void initState() {
    super.initState();
  }

  ///
  int get _currentIndex {
    return _paths.indexWhere(
      (e) => e.startsWith(_path),
    );
  }

  @override
  FutureOr<void> onAfterFirstLayout() {
    final FavoritesBloc favoritesBloc = context.read();
    favoritesBloc.state.whenOrNull(
      mustBeInitialized: () {
        favoritesBloc.init();
      },
    );
  }

  void _onTap(index) {
    if (_currentIndex == index && context.canPop()) {
      context.pop();
    } else {
      final path = _paths[index];
      context.go(path);
    }
  }

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).viewPadding.bottom;
    final darkMode = context.watch<AppThemeBloc>().darkMode;
    final index = _currentIndex;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: false,
        child: widget.child,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
          bottom: bottomPadding * 0.5,
        ),
        color: darkMode ? AppColors.dark700 : const Color(0xfff0f0f0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: () => _onTap(0),
              child: Icon(
                index == 0 ? AppIcons.home_filled : AppIcons.home,
                color: darkMode ? Colors.white : AppColors.dark,
                size: 28,
              ),
            ),
            MaterialButton(
              onPressed: () => _onTap(1),
              child: Icon(
                index == 1 ? AppIcons.favorite_filled : AppIcons.favorite,
                color: darkMode ? Colors.white : AppColors.dark,
                size: 28,
              ),
            ),
            MaterialButton(
              onPressed: () => _onTap(2),
              child: Icon(
                index == 2 ? AppIcons.person_filled : AppIcons.person,
                color: darkMode ? Colors.white : AppColors.dark,
                size: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
