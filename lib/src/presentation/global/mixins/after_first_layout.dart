import 'dart:async';

import 'package:flutter/material.dart';

mixin AfterFirstLayout<T extends StatefulWidget> on State<T> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.endOfFrame.then(
      (_) {
        if (mounted) {
          onAfterFirstLayout();
        }
      },
    );
  }

  FutureOr<void> onAfterFirstLayout();
}
