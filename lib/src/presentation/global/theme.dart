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
        secondary: AppColors.secondary,
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
          const Color(0xff2196f3),
        ),
        trackColor: MaterialStateProperty.all(
          const Color(0xff90caf9),
        ),
      ),
      listTileTheme: const ListTileThemeData(
        textColor: Colors.white,
      ),
      tabBarTheme: const TabBarTheme(
        labelColor: Colors.white,
      ),
      indicatorColor: AppColors.secondary,
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.secondary,
      ),
    );
  }

  return baseTheme.copyWith(
    colorScheme: const ColorScheme.dark(
      secondary: AppColors.secondary,
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
    indicatorColor: AppColors.secondary,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.secondary,
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(
        AppColors.dark700,
      ),
      trackColor: MaterialStateProperty.all(
        AppColors.dark700.withOpacity(0.3),
      ),
    ),
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xfff2f2f2),
      iconTheme: IconThemeData(
        color: AppColors.dark,
      ),
    ),
  );
}
