import 'package:flutter/foundation.dart';

import '../../../../domain/models/user/user.dart';

enum InitSessionStatus{
  signedIn,
}

class SessionBLoC extends ChangeNotifier {
  User? _user;
  User? get user => _user;

  late final String _initialLocation;

  void setInitialLocation(String initialLocation) {
    _initialLocation = initialLocation;
  }

  void setUser(
    User? user, {
    bool notify = true,
  }) {
    _user = user;
    if (notify) {
      notifyListeners();
    }
  }
}
