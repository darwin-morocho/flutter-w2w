import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../blocs/favorites/bloc.dart';
import '../mixins/after_first_layout.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({
    super.key,
    required this.child,
    required this.state,
  });
  final GoRouterState state;
  final Widget child;

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> with AfterFirstLayout {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: widget.child,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (context.canPop()) {
            context.pop();
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'favorite',
          ),
        ],
      ),
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
}
