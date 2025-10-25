import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String? data;
  TextStyle? style;
  double? fontSize;
  FontWeight? weight;
  String? fontFamily;
  TextAlign? align;
  Color? color;
  FontStyle? fontStyle;
  TextAlign?textAlign;
  CustomText({
    super.key,
    this.data,
    this.fontSize,
    this.weight,
    this.fontFamily,
    this.style,
    this.align,
    this.color,
    this.fontStyle,
    this.textAlign
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? "",
      textAlign:textAlign??TextAlign.center,
      style:
          style ??
          TextStyle(
            fontSize: fontSize,
            fontWeight: weight,
            fontFamily: fontFamily,
            color: color,
            fontStyle: fontStyle,
          ),
    );
  }
}
