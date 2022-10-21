import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

ThemeData getTheme(bool darkMode) {
  final baseTheme = darkMode
      ? ThemeData.dark(
          useMaterial3: true,
        )
      : ThemeData.light(useMaterial3: true);

  if (darkMode) {
    return baseTheme.copyWith(
      colorScheme: const ColorScheme.dark(
        secondary: AppColors.accent,
      ),
      textTheme: GoogleFonts.nunitoSansTextTheme().copyWith(
        bodyText1: const TextStyle(color: Colors.white),
        bodyText2: const TextStyle(color: Colors.white),
      ),
      cardColor: AppColors.dark700,
      backgroundColor: AppColors.dark,
      scaffoldBackgroundColor: AppColors.dark,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.dark700,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.dark,
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.all(
          AppColors.accent,
        ),
        trackColor: MaterialStateProperty.all(
          AppColors.accent.withOpacity(0.4),
        ),
      ),
      listTileTheme: const ListTileThemeData(
        textColor: Colors.white,
      ),
      tabBarTheme: const TabBarTheme(
        labelColor: Colors.white,
      ),
      indicatorColor: AppColors.accent,
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.accent,
      ),
      chipTheme: const ChipThemeData(
        backgroundColor: AppColors.dark700,
      ),
    );
  }

  return baseTheme.copyWith(
    colorScheme: const ColorScheme.dark(
      secondary: AppColors.accent,
    ),
    textTheme: GoogleFonts.nunitoSansTextTheme().copyWith(
      bodyText1: const TextStyle(color: AppColors.dark),
      bodyText2: const TextStyle(color: AppColors.dark),
    ),
    backgroundColor: Colors.white,
    tabBarTheme: const TabBarTheme(
      labelColor: AppColors.dark,
    ),
    cardColor: const Color(0xfff2f2f2),
    indicatorColor: AppColors.accent,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.accent,
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(
        AppColors.dark700,
      ),
      trackColor: MaterialStateProperty.all(
        AppColors.dark700.withOpacity(0.3),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xfff2f2f2),
      iconTheme: IconThemeData(
        color: AppColors.dark,
      ),
    ),
  );
}
