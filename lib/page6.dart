import 'package:flutter/material.dart';

class Page6 extends StatelessWidget {
  const Page6({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: 160,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Color(0xff139F25),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              height: 145,
              width: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/image/a2652105f22310d52ea503c810990d6b240b88bf.png",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: 107,
              width: 250,
              child: Column(
                children: [
                  Text(
                    textAlign:TextAlign.center,
                    "Fast. Reliable. Hassle-Free Parcel Delivery.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  Text(
                    textAlign:TextAlign.center,
                    "Your trusted partner for fast &  safe,  deliveries. Send or receive with ease. Start shipping today!",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFFFFFF),
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
