import 'package:expense_tracker/features/authentication/screens/onboarding/onboarding.dart';
import 'package:expense_tracker/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
//initializtion of widget bindinng

//local storage

// splash screen

// initializtion of firebase

//initiazation of authentication

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: Ttheme.lightTheme,
      darkTheme: Ttheme.darkTheme,
      home: OnboardingScreen(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
