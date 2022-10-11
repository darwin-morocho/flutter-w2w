import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({
    super.key,
    required this.nextLocation,
  });
  final String? nextLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
