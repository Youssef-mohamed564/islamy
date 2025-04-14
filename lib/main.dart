import 'package:flutter/material.dart';
import 'package:islamy/common/app_theme.dart';
import 'package:islamy/home_screen.dart';

void main() {
  runApp(const Islamy());
}

class Islamy extends StatelessWidget {
  const Islamy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes:{ HomeScreen.routeName:(_)=>HomeScreen()},
      title: 'Islamy',
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.dark,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
