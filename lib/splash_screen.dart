import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_screen_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashScreenController>(
      builder: (controller) {
        return Scaffold(
          appBar:PreferredSize(preferredSize:Size.fromHeight(44), child: AppBar(backgroundColor:Color(0xff139F25),)),
          body: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(color: Color(0xff139F25)),
            child: Center(
              child: Container(
                height: 192,
                width: 192,
                decoration: BoxDecoration(image:DecorationImage(image:NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/image?q=tbn:ANd9GcTARp7SqA-zOSJ1fNlCaBLq7DpSQG1_nHZ64g&s')
                    ,fit: BoxFit.fill,),
                  borderRadius: BorderRadius.all(Radius.circular(100))
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
