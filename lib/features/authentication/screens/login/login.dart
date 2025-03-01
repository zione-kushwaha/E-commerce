import 'package:expense_tracker/common/styles/spacing_style.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithTopAppBar,
          child: Column(
            children: [
              //logo, title and subtitle
            ],
          ),
        ),
      ),
    );
  }
}
