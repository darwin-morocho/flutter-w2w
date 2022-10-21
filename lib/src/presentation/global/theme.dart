import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

ThemeData getTheme(bool darkMode) {
  final baseTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.dark(
      secondary: AppColors.accent,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.accent,
    ),
    indicatorColor: AppColors.accent,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          AppColors.accent,
        ),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ),
  );

  if (darkMode) {
    return baseTheme.copyWith(
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
      chipTheme: const ChipThemeData(
        backgroundColor: AppColors.dark700,
      ),
    );
  }

  return baseTheme.copyWith(
    textTheme: GoogleFonts.nunitoSansTextTheme().copyWith(
      bodyText1: const TextStyle(color: AppColors.dark),
      bodyText2: const TextStyle(color: AppColors.dark),
    ),
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    tabBarTheme: const TabBarTheme(
      labelColor: AppColors.dark,
    ),
    cardColor: const Color(0xfff2f2f2),
    indicatorColor: AppColors.accent,
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(
        AppColors.dark700,
      ),
      trackColor: MaterialStateProperty.all(
        AppColors.dark700.withOpacity(0.3),
      ),
    ),
    brightness: Brightness.light,
    chipTheme: const ChipThemeData(
      backgroundColor: Color(0xfff0f0f0),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xfff2f2f2),
      iconTheme: IconThemeData(
        color: AppColors.dark,
      ),
    ),
  );
}
