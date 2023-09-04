import 'package:flutter/material.dart';
import 'package:to_do_app/core/themes/theme.dart';
import 'package:to_do_app/core/utils/app_strings.dart';
import 'package:to_do_app/features/auth/data/presentation/screens/splach_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appTitle,
      home: SplashScreen(),
      theme: getAppTheme(),
      darkTheme: getDarkTheme(),
      themeMode: ThemeMode.light,
    );
  }
}
