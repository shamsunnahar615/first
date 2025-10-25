import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/app_route.dart';
import 'package:test_app/custom_button.dart';
import 'package:test_app/custom_text.dart';
import 'package:test_app/custom_textfield.dart';

import 'sign_in_controller.dart' show SignInController;

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 20),
                Container(
                  height: 75,
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      CustomText(
                        data: "Welcome Back",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          color: Color(0xff139F25),
                        ),
                      ),
                      SizedBox(height: 2),
                      CustomText(
                        data:
                            "Log in to continue shopping and enjoy personalized offers",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,

                          color: Color(0xff757575),
                        ),
                      ),
                      CustomText(
                        data: " personalized offers",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color(0xff757575),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 450,
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        data: "Email or Phone Number",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          color: Color(0xff000000),
                        ),
                      ),
                      SizedBox(height: 8),
                      CustomTextfield(hintText: "Enter your email address"),
                      SizedBox(height: 16),
                      CustomText(
                        data: "Password",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          color: Color(0xff000000),
                        ),
                      ),
                      SizedBox(height: 8),
                      CustomTextfield(hintText: "Enter Password"),
                      SizedBox(height: 16),
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () {
                            Get.toNamed(AppRoute.forgotPassword);
                          },
                          child: Text(
                            "Forgot password?",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff139F25),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),

                      Align(
                        alignment: Alignment.center,
                        child: CustomButton(
                          height: 48,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            color: controller.buttonIndex == 0
                                ? Color(0xff139F25)
                                : Color(0xffFFFFFF),
                          ),

                          text: "Sign In",
                          onTap: () {
                            controller.buttonIndex = 0;
                            controller.update();
                            Get.toNamed(AppRoute.homeScreen);
                          },
                        ),
                      ),
                      SizedBox(height: 8),
                      Center(
                        child: Text(
                          "or",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff139F25),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Center(
                        child: CustomButton(
                          height: 48,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            color: controller.buttonIndex == 1
                                ? Color(0xff139F25)
                                : Color(0xffFFFFFF),
                          ),
                          text: "Continue with Google",

                          onTap: () {
                            controller.buttonIndex = 1;
                            controller.update();
                          },
                        ),
                      ),
                      SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don’t have an account? ",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff757575),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.toNamed(AppRoute.createYourAccount);
                            },
                            child: Text(
                              "Create Account ",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff139F25),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
