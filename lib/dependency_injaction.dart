import 'package:get/get.dart';
import 'package:test_app/create_youe_account_controller.dart';
import 'package:test_app/onobarding_screen_controller.dart';
import 'package:test_app/sign_in_controller.dart';
import 'package:test_app/splash_screen_controller.dart';

class dependencyInjection extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() =>SplashScreenController(), fenix: true);
    Get.lazyPut(() =>OnobardingScreenController(), fenix: true);
    Get.lazyPut(() =>SignInController(), fenix: true);
    Get.lazyPut(() =>CreateYourAccountController(), fenix: true);
  }
}