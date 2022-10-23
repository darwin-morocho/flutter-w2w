import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  bool get isLargeScreen => MediaQuery.of(this).size.shortestSide >= 620;
}
