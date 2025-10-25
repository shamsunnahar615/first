import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/app_route.dart';
import 'package:test_app/custom_button.dart';

class SummeryRider extends StatefulWidget {
  const SummeryRider({super.key});

  @override
  State<SummeryRider> createState() => _SummeryRiderState();
}

class _SummeryRiderState extends State<SummeryRider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Searching Rider",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff333333),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
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
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 525,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Column(
                          children: [
                            Container(
                              height: 129,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffD7D7D7)),
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Recipient Information",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff333333),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.person_add_alt_1_outlined,
                                          size: 16,
                                          color: Colors.green,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "Emma Hardy",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff757575),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.wifi_calling_3,
                                          size: 16,
                                          color: Colors.green,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "(555) 123-4567",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff757575),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          size: 16,
                                          color: Colors.green,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "Mangunsari Park, Purwokerto City",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff757575),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 16),
                            Container(
                              height: 150,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffD7D7D7)),
                                borderRadius: BorderRadius.circular(11),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Parcel Details",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff333333),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.card_giftcard_outlined,
                                          size: 16,
                                          color: Colors.green,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "Parcel Type: Gift",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff757575),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.money_sharp,
                                          size: 16,
                                          color: Colors.green,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "Parcel Value : 100",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff757575),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.legend_toggle_outlined,
                                          size: 16,
                                          color: Colors.green,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "Distance: 5 KM",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff757575),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.attach_money,
                                          size: 16,
                                          color: Colors.green,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "Delivery Charge:10",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff757575),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            CustomButton(
                              height: 44,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffE93330)),
                                borderRadius: BorderRadius.circular(48),
                              ),
                              text: "Cancel Ruquest",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffFFFFFF),
                              ),
                              onTap: () {
                                Get.toNamed(AppRoute.pzrcelDetaile);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: Text("Click"),
          ),
        ],
      ),
    );
  }
}
