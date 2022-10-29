import 'package:flutter/widgets.dart';

mixin InitializedMixin<T extends StatefulWidget> on State<T> {
  bool _initialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_initialized) {
      _initialized = true;
      initialized();
    }
  }

  void initialized() {}
}
