import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/app_route.dart';
import 'package:test_app/custom_button.dart';
import 'package:test_app/custom_text.dart';
import 'package:test_app/custom_textfield.dart';

class PzrcelDetaile extends StatefulWidget {
  const PzrcelDetaile({super.key});

  @override
  State<PzrcelDetaile> createState() => _PzrcelDetaileState();
}

class _PzrcelDetaileState extends State<PzrcelDetaile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Parcel Details",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff333333),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              CustomText(
                data: "Receivers Name",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height: 8),
              CustomTextfield(hintText: "Enter Receiver name"),
              SizedBox(height: 16),
              CustomText(
                data: "Contact Number",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height: 8),
              CustomTextfield(hintText: "Enter contact Number"),
              SizedBox(height: 16),
              CustomText(
                data: "Additional Instruction",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height: 8),
              CustomTextfield(hintText: "Giver Additional Instruction "),
              SizedBox(height: 16),
              CustomText(
                data: "Parcel Type",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height: 8),
              CustomTextfield(hintText: ""),
              SizedBox(height: 16),
              CustomText(
                data: "Parcel Value",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height: 8),
              CustomTextfield(hintText: "Give product value amount"),
              SizedBox(height: 16),
              CustomText(
                data: "Parcel Weight",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height: 30),
              CustomText(
                data: "Select Ride",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height: 13),
              Row(
                children: [
                  Container(
                    height: 98,
                    width: 98,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 58,
                          width: 58,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/image/8a357912a0f7ee145df60a2982d2a8323152af38.png",
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Bike",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 98,
                    width: 98,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 58,
                          width: 58,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/image/07e1b5c302b93e0b49ccb5f76bda988386d39bc6.png",
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Car",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              CustomButton(
                height: 44,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Color(0xff139F25),
                  borderRadius: BorderRadius.circular(48),
                ),
                text: "Continue",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffFFFFFF),
                ),
                onTap: () {
                  Get.toNamed(AppRoute.summery);
                },
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
