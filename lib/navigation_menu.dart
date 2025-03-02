import 'package:expense_tracker/features/shop/screens/home/home.dart';
import 'package:expense_tracker/utils/constants/colors.dart';
import 'package:expense_tracker/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
              height: 80,
              elevation: 0,
              backgroundColor: dark ? TColors.black : TColors.white,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (val) => {
                    controller.updateIndex(val),
                  },
              destinations: [
                NavigationDestination(
                  icon: Icon(Iconsax.home),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: Icon(Iconsax.shop),
                  label: 'Store',
                ),
                NavigationDestination(
                  icon: Icon(Iconsax.heart),
                  label: 'Favorites',
                ),
                NavigationDestination(
                  icon: Icon(Iconsax.user),
                  label: 'Profile',
                ),
              ]),
        ),
        body: Obx(() => controller.pages[controller.selectedIndex.value]));
  }
}

class NavigationController extends GetxController {
  var selectedIndex = 0.obs;

  void updateIndex(int index) {
    selectedIndex.value = index;
  }

  final List<Widget> pages = [
    HomeScreen(),
    Container(color: Colors.blue),
    Container(color: Colors.green),
    Container(color: Colors.yellow),
  ];
}
