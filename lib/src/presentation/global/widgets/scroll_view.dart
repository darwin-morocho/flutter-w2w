import 'package:flutter/material.dart';

class MyScrollView extends StatelessWidget {
  const MyScrollView({
    super.key,
    required this.children,
  });
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
