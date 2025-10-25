import 'package:flutter/material.dart';
import 'package:test_app/app_route.dart';
import 'package:test_app/custom_button.dart';
import 'package:test_app/custom_text.dart';
import 'package:test_app/custom_textfield.dart';
import 'package:get/get.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
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
                    data: "Reset Password",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      color: Color(0xff139F25),
                    ),
                  ),
                  SizedBox(height: 2),
                  CustomText(
                    data: "Please set a new password to secure your account ",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,

                      color: Color(0xff757575),
                    ),
                  ),
                  CustomText(
                    data: "and regain access",
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
            SizedBox(height: 30),
            Container(
              height: 450,
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  CustomTextfield(hintText: "Create a password"),
                  SizedBox(height: 16),
                  CustomText(
                    data: "Confirm New Password",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(height: 8),
                  CustomTextfield(hintText: "Re-enter your new password"),

                  SizedBox(height: 20),

                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              icon: Icon(
                                Icons.check_circle_outline,
                                size:80,
                                color: Color(0xff139F25),
                              ),
                              title: Text(
                                "Password Changed!",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                              content: Text(
                                "You can now use your new password to login to your account.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[700],
                                ),
                              ),
                              actions: [
                                Center(
                                  child: CustomButton(
                                    height: 48,
                                    width: 295,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(26),
                                      color: Color(0xff139F25),
                                    ),

                                    text: "Login",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    onTap:(){
                                      Get.toNamed(AppRoute.signIn);
                                    },
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },

                      child: Text("Save Changes"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
