import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/utils/constants/image_strings.dart';
import '/utils/helpers/helper_functions.dart';
import '/utils/helpers/network_manager.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();
  final hidePassword = true.obs;
  final email = TextEditingController();
  final password = TextEditingController();
  final phone = TextEditingController();
  GlobalKey<FormState> loginFormKey =
      GlobalKey<FormState>(debugLabel: 'loginFormKey');

  Future<void> login() async {}
}
