import 'package:flutter/material.dart';
import 'package:test_app/custom_text.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 264,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/image/25c83551e1e131583ee849cce30f1f95d16aeec7 (1).png",
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 40),
          Container(
            height: 109,
            width: 335,
            alignment: Alignment.center,
            child: Column(
              children: [
                CustomText(
                  data: "Welcome to test app,",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,

                    color: Color(0xff139F25),
                  ),
                ),
                SizedBox(height: 16),
                CustomText(
                  data:
                      "Your go-to solution for fast, reliable parcel delivery. Whether you're sending or receiving, we make it easy and quick.",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
