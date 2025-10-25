import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart' show GetPage;
import 'package:test_app/create_your_account.dart';
import 'package:test_app/details_pages1.dart';
import 'package:test_app/forgot_password.dart';
import 'package:test_app/home_screen.dart';
import 'package:test_app/onobarding_screen.dart';
import 'package:test_app/pzrcel_detaile.dart';
import 'package:test_app/reset_password.dart';
import 'package:test_app/sign_in.dart';
import 'package:test_app/summery.dart';
import 'package:test_app/verify_otp.dart';
import 'package:test_app/verify_otp2.dart';
import 'splash_screen.dart';
import 'summery_rider.dart' show SummeryRider;

class AppRoute{

  static const String splashScreen="/splashScreen";
  static const String onobardingScreen="/onobardingScreen";
  static const String signIn="/signIn";
  static const String forgotPassword="/forgotPassword";
  static const String verifyOtp="/verifyOtp";
  static const String resetPassword="/resetPassword";
  static const String createYourAccount="/createYourAccount";
  static const String verifyOtp2="/verifyOtp2";
  static const String homeScreen="/homeScreen";
  static const String detailsPages1="/detailsPages1";
  static const String pzrcelDetaile="/pzrcelDetaile";
  static const String summery="/summery";
  static const String summeryRider="/summeryRider";
  static List<GetPage> routes=[
     GetPage(name: splashScreen, page: ()=>SplashScreen()),
     GetPage(name: onobardingScreen, page: ()=>OnobardingScreen()),
     GetPage(name: signIn, page: ()=>SignIn()),
     GetPage(name: forgotPassword, page: ()=>ForgotPassword()),
     GetPage(name: verifyOtp, page: ()=>VerifyOtp()),
     GetPage(name: resetPassword, page: ()=>ResetPassword()),
     GetPage(name: createYourAccount, page: ()=>CreateYourAccount()),
     GetPage(name: verifyOtp2, page: ()=>VerifyOtp2()),
     GetPage(name: homeScreen, page: ()=>HomeScreen()),
     GetPage(name: detailsPages1, page: ()=>DetailsPages1()),
     GetPage(name: pzrcelDetaile, page: ()=>PzrcelDetaile()),
     GetPage(name: summery, page: ()=>Summery()),
     GetPage(name: summeryRider, page: ()=>SummeryRider()),
  ];
}