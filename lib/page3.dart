import 'package:flutter/material.dart';
import 'package:test_app/custom_text.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 301,
              width: 277,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/image/ca6932ec7d7fdc410ea617b9d66981614e87b781.png",
                  ),
                  fit: BoxFit.fill,
                ),
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
                  data: "Ready to Deliver?",
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
                      "Let’s get your parcels moving! With just a few taps, your package is on its way. Speedy, secure, and hassle-free deliveries—every time.",
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
