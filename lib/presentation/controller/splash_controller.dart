/*
Developer: Basha S
Create Date: 22-OCT-21 09:41

UPDATE DETAIL
- 04-FEB-22 11:11 (Basha S)
  Splash controller create.
*/

import 'package:get/get.dart';
import '../../core/route/route_name.dart';
import '../../domain/usecases/usecases.dart';

class SplashController extends GetxController {
  //CONSTRUCTOR
  final SplashGet _splashGet;
  SplashController(this._splashGet);

  late String? appName;

  @override
  void onInit() {
    super.onInit();
    appName = 'Clean Architecture';

    _splashGet.isLoginReadSession()
        ? _loginNavigation()
        : _withOutLoginNavigation();
  }

  _withOutLoginNavigation() async =>
      await Future.delayed(const Duration(seconds: 3)).then((value) {
        Get.offAllNamed(RouteName.dashboardRoute);
      });

  _loginNavigation() async =>
      await Future.delayed(const Duration(seconds: 1)).then((value) {
        Get.offAllNamed(RouteName.dashboardRoute);
      });
}
