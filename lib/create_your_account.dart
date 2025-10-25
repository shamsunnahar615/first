import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/app_route.dart';
import 'package:test_app/create_youe_account_controller.dart';
import 'package:test_app/custom_button.dart';
import 'package:test_app/custom_text.dart';
import 'package:test_app/custom_textfield.dart';

class CreateYourAccount extends StatefulWidget {
  const CreateYourAccount({super.key});

  @override
  State<CreateYourAccount> createState() => _CreateYourAccountState();
}

class _CreateYourAccountState extends State<CreateYourAccount> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateYourAccountController>(
      builder: (controller) {
        return Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    height: 76,
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        CustomText(
                          data: "Create Your Account",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            color: Color(0xff139F25),
                          ),
                        ),
                        SizedBox(height: 8),
                        CustomText(
                          data: "Join us to explore top Canadian-made ",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            color: Color(0xff757575),
                          ),
                        ),
                        CustomText(
                          data: "products, exclusive deals, and great rewards",
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
                  SizedBox(height: 16),
                  CustomText(
                    data: "Select your role",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xff757575),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          height: 48,
                          width: 141,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: controller.buttonIndex == 0
                                ? Color(0xff139F25)
                                : Color(0xffFFFFFF),
                          ),
                          text: "User",
                          onTap: () {
                            controller.buttonIndex = 0;
                            controller.update();
                          },
                        ),
                        SizedBox(width: 20),
                        CustomButton(
                          height: 48,
                          width: 141,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: controller.buttonIndex == 1
                                ? Color(0xff139F25)
                                : Color(0xffFFFFFF),
                          ),
                          text: "Rider",
                          onTap: () {
                            controller.buttonIndex = 1;
                            controller.update();
                          },
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: CustomText(
                      data: "Full Name",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  CustomTextfield(hintText: "Enter your full name"),
                  SizedBox(height: 16),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: CustomText(
                      data: "Email",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  CustomTextfield(hintText: "Enter your email address"),
                  SizedBox(height: 16),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: CustomText(
                      data: "Phone",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  CustomTextfield(hintText: "Enter your phone number"),
                  SizedBox(height: 16),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: CustomText(
                      data: "Password",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  CustomTextfield(hintText: "Enter Password"),
                  SizedBox(height: 16),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: CustomText(
                      data: "Confirm Password",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  CustomTextfield(hintText: "Enter Password"),
                  SizedBox(height: 19),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.check_box_outlined),
                      Text(
                        "I agree to the ",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff757575),
                        ),
                      ),
                      Text(
                        "Terms and Conditions ",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff333333),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "and ",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff757575),
                        ),
                      ),
                      Text(
                        "Privacy Policy.",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff333333),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  CustomButton(
                    height: 52,
                    width: 295,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      color: controller.buttonIndex == 0
                          ? Color(0xff139F25)
                          : Color(0xffFFFFFF),
                    ),
                    text: "Continue",
                    onTap: () {
                      controller.buttonIndex = 1;
                      controller.update();
                      Get.toNamed(AppRoute.verifyOtp2);
                    },
                  ),
                  SizedBox(height: 12),
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
                  SizedBox(height: 12),
                  CustomButton(
                    height: 52,
                    width: 295,
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
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff757575),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextButton(onPressed:(){
                        Get.toNamed(AppRoute.signIn);
                      }, child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff139F25),
                          fontWeight: FontWeight.bold,
                        ),
                      ),)
                    ],
                  ),
                  SizedBox(height: 12),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
