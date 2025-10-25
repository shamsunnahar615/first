import 'package:flutter/material.dart';
import 'package:test_app/custom_text.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
                  "assets/image/491c80d786b7164da631fb9ce798480477531884.png",
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
                  data: "Fast Deliveries, Anytime",
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
                      "Need a quick delivery? Simply book a ride, and we’ll take care of the rest. Trust us to get your parcels to their destination, safely and on time.",
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
