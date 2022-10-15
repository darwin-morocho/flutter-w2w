import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../router/router.dart';
import '../app_icons.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: false,
        child: widget.child,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: const Color(0x0fffffff),
        onTap: (index) {
          if (_currentIndex == index && context.canPop()) {
            context.pop();
          } else {
            final path = _paths[index];
            context.go(path);
          }
        },
        iconSize: 30,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(AppIcons.home),
            activeIcon: Icon(AppIcons.home_filled),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.favorite),
            activeIcon: Icon(AppIcons.favorite_filled),
            label: 'favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.person),
            activeIcon: Icon(AppIcons.person_filled),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}
