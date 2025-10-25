import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:test_app/custom_button.dart';
import 'package:test_app/custom_text.dart';

import 'app_route.dart' show AppRoute;

class VerifyOtp2 extends StatefulWidget {
  const VerifyOtp2({super.key});

  @override
  State<VerifyOtp2> createState() => _VerifyOtp2State();
}

class _VerifyOtp2State extends State<VerifyOtp2> {
  final defaultpinTheme = PinTheme(
    height: 58,
    width: 58,
    textStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: Color(0xff000000),
    ),
    decoration: BoxDecoration(
      color: Color(0xffD7D7D7),
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Color(0xffD7D7D7)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: 332,
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                width: double.maxFinite,
                height: 88,
                child: Column(
                  children: [
                    CustomText(
                      data: "Verify OTP",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        color: Color(0xff139F25),
                      ),
                    ),
                    SizedBox(height: 16),

                    CustomText(
                      data: "Enter your OTP which has been sent to your phone ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color(0xff757575),
                      ),
                    ),
                    CustomText(
                      data: "and completely verify your account. ",
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
              Container(
                child: Pinput(
                  length: 4,
                  disabledPinTheme: defaultpinTheme,
                  focusedPinTheme: defaultpinTheme.copyWith(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffD7D7D7)),
                    ),
                  ),
                  onCompleted: (pid) => debugPrint(pid),
                ),
              ),
              SizedBox(height: 20),

              CustomText(
                data: "A code has been sent to your phone number ",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  color: Color(0xff3A3A3A),
                ),
              ),
              SizedBox(height: 8),
              CustomText(
                data: "Resend in 00:57",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  color: Color(0xff139F25),
                ),
              ),
              SizedBox(height: 20),
              CustomButton(
                height: 52,
                width: 295,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  color: Color(0xff139F25),
                ),
                text: "Verify",
                onTap: () {
                  Get.toNamed(AppRoute.homeScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
