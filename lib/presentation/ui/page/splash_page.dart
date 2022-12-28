/*
Developer: Basha S
Create Date: 22-11-21 09:41
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../controller/controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  build(BuildContext context) => Scaffold(
      body: Center(
          child: Text(controller.appName!,
              style: Get.textTheme.headline2!.copyWith(fontSize: 28))));
}
