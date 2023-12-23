import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String fText;
  FontWeight fWt;
  double fSize;
  Color textColor;

  CustomText({
    required this.fWt,
    required this.fSize,
    required this.textColor,
    required this.fText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      fText,
      style: TextStyle(
        fontSize: fSize,
        fontWeight: fWt,
        color: textColor,
      ),
    );
  }
}
