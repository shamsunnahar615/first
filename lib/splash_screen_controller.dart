import 'package:get/get.dart';
import 'package:test_app/onobarding_screen.dart';

class SplashScreenController extends GetxController {
  @override
  void onReady() {
    navigateToHome();
    super.onReady();
  }

  Future navigateToHome() async {
    await Future.delayed(Duration(seconds: 2));
    Get.to(
      () => OnobardingScreen(),
      transition: Transition.downToUp,
      duration: Duration(microseconds: 800),
    );
  }
}
