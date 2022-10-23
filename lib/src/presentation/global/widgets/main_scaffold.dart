import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../router/router.dart';
import '../app_colors.dart';
import '../app_icons.dart';
import '../blocs/app_theme/bloc.dart';
import '../blocs/favorites/bloc.dart';
import '../blocs/session/session_bloc.dart';
import '../build_context_extension.dart';
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
    final tabBarColor = darkMode ? AppColors.dark700 : const Color(0xfff0f0f0);
    final isLargeScreen = context.isLargeScreen;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          widget.child,
          Positioned(
            bottom: 10 + bottomPadding * 0.5,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 380,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5,
                    sigmaY: 5,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: tabBarColor.withOpacity(0.7),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _TabButton(
                          selectedIcon: AppIcons.home_filled,
                          unselectedIcon: AppIcons.home,
                          index: 0,
                        ),
                        _TabButton(
                          selectedIcon: AppIcons.favorite_filled,
                          unselectedIcon: AppIcons.favorite,
                          index: 1,
                        ),
                        _TabButton(
                          selectedIcon: AppIcons.person_filled,
                          unselectedIcon: AppIcons.person,
                          index: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _TabButton extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  _TabButton({
    required this.selectedIcon,
    required this.unselectedIcon,
    required this.index,
  });
  final int index;

  final IconData selectedIcon;
  final IconData unselectedIcon;

  @override
  Widget build(BuildContext context) {
    final darkMode = Theme.of(context).brightness == Brightness.dark;
    final state = context.findAncestorStateOfType<_MainScaffoldState>()!;
    final currentIndex = state._currentIndex;

    final active = index == currentIndex;

    return Expanded(
      child: Material(
        elevation: 0,
        color: Colors.transparent,
        child: InkWell(
          onTap: () => state._onTap(index),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Icon(
              active ? selectedIcon : unselectedIcon,
              color: active
                  ? AppColors.cyan
                  : darkMode
                      ? Colors.white54
                      : AppColors.dark.withOpacity(
                          0.3,
                        ),
              size: 34,
            ),
          ),
        ),
      ),
    );
  }
}
