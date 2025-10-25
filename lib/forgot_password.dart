import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/app_route.dart';
import 'package:test_app/custom_button.dart';
import 'package:test_app/custom_text.dart';
import 'package:test_app/custom_textfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: 287,
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              height: 106,
              width: double.maxFinite,
              child: Column(
                children: [
                  Text(
                    "Forgot Password",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      color: Color(0xff139F25),
                    ),
                  ),
                  SizedBox(height: 16),
                  CustomText(
                    data: "Enter the phone number associated with",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xff757575),
                    ),
                  ),
                  CustomText(
                    data: " your account and we’ll send you OTP to reset ",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      color: Color(0xff757575),
                    ),
                  ),
                  CustomText(
                    data: "your password",
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
            SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                " Phone",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  color: Color(0xff333333),
                ),
              ),
            ),
            SizedBox(height: 8),
            CustomTextfield(hintText: "Ex : +980010101010"),
            SizedBox(height: 20),
            CustomButton(
              height: 48,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                color: Color(0xff139F25),
              ),
              text: "Confirm",
              onTap: () {
                Get.toNamed(AppRoute.verifyOtp);
              },
            ),
          ],
        ),
      ),
    );
  }
}
