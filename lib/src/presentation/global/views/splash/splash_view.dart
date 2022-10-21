import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';
import '../../app_colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: const MediaQueryData(),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Material(
          color: Colors.transparent,
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Transform.scale(
                    scale: 5,
                    child: Transform.rotate(
                      angle: 30 * math.pi / 180,
                      child: Assets.images.splash.collage.image(
                        fit: BoxFit.contain,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Container(
                    color: AppColors.dark700.withOpacity(0.7),
                  ),
                ),
                const Center(
                  child: CircularProgressIndicator(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
