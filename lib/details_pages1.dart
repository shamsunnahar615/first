import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/app_route.dart';
import 'package:test_app/custom_button.dart';

class DetailsPages1 extends StatefulWidget {
  const DetailsPages1({super.key});

  @override
  State<DetailsPages1> createState() => _DetailsPages1State();
}

class _DetailsPages1State extends State<DetailsPages1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Choose Location",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff333333),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.maxFinite,
              decoration: BoxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.share_location_rounded),
                      Text(
                        "Pick up location",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff989898),
                        ),
                      ),
                      SizedBox(width: 300),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_down),
                      ),
                    ],
                  ),
                  Text(
                    "Hatari Housing No.21, Wangon",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff1E1E1E),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.maxFinite,
              decoration: BoxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.share_location_rounded),
                      Text(
                        "Destination",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff989898),
                        ),
                      ),
                      SizedBox(width: 325),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_down),
                      ),
                    ],
                  ),
                  Text(
                    "Mangunsari Park, Purwokerto City",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff1E1E1E),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 289,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/image/75958874070ce67ba4be829a2c579f8e4902a8e3 (1).png",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              height: 44,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Color(0xff139F25),
                borderRadius: BorderRadius.circular(48),
              ),
              text: "Confirm Location",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xffFFFFFF),
              ),
              onTap:(){
                Get.toNamed(AppRoute.pzrcelDetaile);
              },
            ),
          ],
        ),
      ),
    );
  }
}
