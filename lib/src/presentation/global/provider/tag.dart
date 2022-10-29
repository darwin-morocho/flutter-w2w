// ignore_for_file: avoid_renaming_method_parameters

import 'package:flutter/material.dart';

class TagProvider extends InheritedWidget {
  const TagProvider({
    super.key,
    required this.tag,
    required Widget child,
  }) : super(child: child);

  final String tag;

  @override
  bool updateShouldNotify(_) => false;

  static String of(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<TagProvider>()!;
    return provider.tag;
  }
}
