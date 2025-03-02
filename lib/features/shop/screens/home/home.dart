import 'package:expense_tracker/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:expense_tracker/common/widgets/custom_shapes/container/t_search_container.dart';
import 'package:expense_tracker/utils/constants/sizes.dart';
import 'package:expense_tracker/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: TPrimaryHeaderContainer(
            child: Column(
          children: [
            // appbar
            TAppBar(),
          ],
        )),
      ),
    );
  }
}
