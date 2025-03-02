import 'package:expense_tracker/common/widgets/success_screen/success_screen.dart';
import 'package:expense_tracker/features/authentication/screens/login/login.dart';
import 'package:expense_tracker/features/authentication/screens/onboarding/onboarding.dart';
import 'package:expense_tracker/features/authentication/screens/password_configration/forget_password.dart';
import 'package:expense_tracker/features/authentication/screens/signup/signup.dart';
import 'package:expense_tracker/features/authentication/screens/signup/widgets/verify_email.dart';
import 'package:expense_tracker/navigation_menu.dart';
import 'package:expense_tracker/utils/constants/image_strings.dart';
import 'package:expense_tracker/utils/constants/text_strings.dart';
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
      home: NavigationMenu(),
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
