import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  void Function()? onTap;
  String? text;
  TextStyle? style;
  double?height;
  double?width;
 Decoration?decoration;

  CustomButton({super.key, this.onTap, this.text, this.style,this.height,this.width,this.decoration});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height:height,
        width:width,
        alignment: Alignment.center,
        decoration:decoration,
        child: Text(text ?? "", style: style ?? TextStyle()),
      ),
    );
  }
}
