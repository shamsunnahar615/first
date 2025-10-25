import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_app/app_route.dart';
import 'package:test_app/custom_button.dart';
import 'package:test_app/onobarding_screen_controller.dart';
import 'package:test_app/page1.dart';
import 'package:test_app/page2.dart';
import 'package:test_app/page3.dart';

class OnobardingScreen extends StatefulWidget {
  const OnobardingScreen({super.key});

  @override
  State<OnobardingScreen> createState() => _OnobardingScreenState();
}

class _OnobardingScreenState extends State<OnobardingScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnobardingScreenController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: PageView(
                      controller: controller.controller,
                      children: [Page1(), Page2(), Page3()],
                    ),
                  ),
                  SizedBox(height: 20),
                  SmoothPageIndicator(
                    controller: controller.controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      activeDotColor: Colors.black,
                      dotColor: Colors.indigo,
                      dotHeight: 12,
                      dotWidth: 12,
                    ),
                  ),
                  SizedBox(height: 25),
                  Positioned(
                    top: 619,
                    left: 41,
                    right: 41,
                    child: Positioned(
                      top: 15,
                      right: 107,
                      left: 107,
                      bottom: 15,
                      child: Column(
                        children: [
                          CustomButton(
                            height:52,
                            width:295,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26),
                              color: Color(0xff139F25),
                            ),
                            text: "Sign Up",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xffFFFFFF),
                            ),
                            onTap: () {
                              Get.toNamed(AppRoute.createYourAccount);
                            },
                          ),
                          SizedBox(height: 15),
                          CustomButton(height:52,
                            width:295,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26),
                              color: Color(0xff139F25),
                            ),

                            text: "Sign In",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color(0xffFFFFFF),
                            ),
                            onTap: () {
                              Get.toNamed(AppRoute.signIn);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
