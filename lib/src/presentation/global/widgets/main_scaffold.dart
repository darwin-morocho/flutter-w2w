import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../router/router.dart';
import '../app_colors.dart';
import '../app_icons.dart';
import '../blocs/app_theme/bloc.dart';
import '../blocs/favorites/bloc.dart';
import '../blocs/session/session_bloc.dart';
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
    final SessionBLoC sessionBLoC = context.read();
    if (sessionBLoC.user != null) {
      final FavoritesBloc favoritesBloc = context.read();
      favoritesBloc.state.whenOrNull(
        mustBeInitialized: () {
          favoritesBloc.init();
        },
      );
    }
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
            _TabButton(
              selectedIcon: AppIcons.home,
              filledIcon: AppIcons.home_filled,
              index: 0,
            ),
            _TabButton(
              selectedIcon: AppIcons.favorite,
              filledIcon: AppIcons.favorite_filled,
              index: 1,
            ),
            _TabButton(
              selectedIcon: AppIcons.person,
              filledIcon: AppIcons.person_filled,
              index: 2,
            ),
          ],
        ),
      ),
    );
  }
}

class _TabButton extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  _TabButton({
    required this.selectedIcon,
    required this.filledIcon,
    required this.index,
  });
  final IconData selectedIcon, filledIcon;
  final int index;

  @override
  Widget build(BuildContext context) {
    final scaffoldState = context.findAncestorStateOfType<_MainScaffoldState>()!;
    final darkMode = context.read<AppThemeBloc>().darkMode;
    final active = scaffoldState._currentIndex == index;

    return Expanded(
      child: MaterialButton(
        onPressed: () => scaffoldState._onTap(index),
        child: Icon(
          active ? filledIcon : selectedIcon,
          color: active
              ? AppColors.accent
              : darkMode
                  ? Colors.white38
                  : AppColors.dark,
          size: 28,
        ),
      ),
    );
  }
}
