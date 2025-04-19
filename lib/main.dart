import 'package:flutter/material.dart';
import 'package:islamy/common/app_theme.dart';
import 'package:islamy/home_screen.dart';
import 'package:islamy/splash_screen.dart';
import 'package:islamy/views/sura_details.dart';

void main() {
  runApp(const Islamy());
}

class Islamy extends StatelessWidget {
  const Islamy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,

      routes:{SplashScreen.routeName:(_)=>SplashScreen(), HomeScreen.routeName:(_)=>HomeScreen(),SuraDetails.routeName:(_)=>SuraDetails()},
      title: 'Islamy',
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.dark,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
