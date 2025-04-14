import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.brownColor),
      scaffoldBackgroundColor: AppColors.offWhiteColor,
      appBarTheme: AppBarTheme(
          backgroundColor: AppColors.offWhiteColor,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: AppColors.brownColor,
              fontSize: 20,
              fontWeight: FontWeight.w700),
          iconTheme: IconThemeData(color: AppColors.brownColor, size: 18)));

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainColor),
      scaffoldBackgroundColor: AppColors.blackColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor:  Colors.white,
          backgroundColor: AppColors.mainColor,
          showUnselectedLabels: false,
          showSelectedLabels: true),
      appBarTheme: AppBarTheme(
          backgroundColor: AppColors.blackColor,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: AppColors.mainColor,
              fontSize: 20,
              fontWeight: FontWeight.w700),
          iconTheme: IconThemeData(color: AppColors.mainColor, size: 18)));
}
