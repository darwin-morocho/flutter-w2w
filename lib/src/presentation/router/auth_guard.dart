import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../global/blocs/session/session_bloc.dart';
import 'router.dart';

String? signInRedirect(BuildContext context, GoRouterState state) {
  final user = sessionProvider.read.user;
  if (user != null) {
    return Routes.home;
  }
  return null;
}

Future<String?> authGuard(BuildContext context, GoRouterState state) async {
  if (sessionProvider.read.user == null) {
    Uri uri = Uri.parse(Routes.signIn.path);
    uri = uri.replace(
      queryParameters: {
        'next': Uri.parse(state.location).toString(),
      },
    );
    return uri.toString();
  }

  return null;
}
