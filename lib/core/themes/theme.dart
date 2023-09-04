import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/core/utils/app_colors.dart';

ThemeData getAppTheme() {
  return ThemeData(
      primaryColor: AppColors.burblebutton,
      scaffoldBackgroundColor: AppColors.background,
      appBarTheme:
          AppBarTheme(backgroundColor: AppColors.background, centerTitle: true),
      textTheme: TextTheme(
          displayLarge: GoogleFonts.lato(
              color: Colors.white.withOpacity(.87),
              fontSize: 32,
              fontWeight: FontWeight.bold),
          displayMedium: GoogleFonts.lato(
            color: Colors.white.withOpacity(.87),
            fontSize: 16,
          ),
          displaySmall: GoogleFonts.lato(
            color: Colors.white.withOpacity(.44),
            fontSize: 16,
          )));
}

ThemeData getDarkTheme() {
  return ThemeData(
      primaryColor: AppColors.dustyyellow,
      scaffoldBackgroundColor: AppColors.background,
      appBarTheme:
          AppBarTheme(backgroundColor: AppColors.background, centerTitle: true),
      textTheme: TextTheme(
          displayLarge: GoogleFonts.lato(
              color: Colors.white.withOpacity(.87),
              fontSize: 32,
              fontWeight: FontWeight.bold),
          displayMedium: GoogleFonts.lato(
            color: Colors.white.withOpacity(.87),
            fontSize: 16,
          ),
          displaySmall: GoogleFonts.lato(
            color: Colors.white.withOpacity(.44),
            fontSize: 16,
          )));
}
