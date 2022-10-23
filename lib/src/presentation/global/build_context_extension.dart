import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  bool get isLandscape => MediaQuery.of(this).size.width >= 640;
}
