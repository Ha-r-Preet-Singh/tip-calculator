import 'package:flutter/material.dart';
import 'package:tip_caculator/screens/static_ui.dart';

InputDecoration getCustomTextFieldDecoration({
  Color flColor = Colors.white,
   String fieldText = "",
   double fieldSize = 32,
   FontWeight fieldWt = FontWeight.w900,
   FontWeight prefixStyleWt = FontWeight.w900,
  required Icon prefix ,
  required String mhintText,

}) {
  return InputDecoration(
    fillColor: flColor,
    filled: true,
    // prefixIcon: Padding(
    //   padding: EdgeInsets.all(10.0),
    //   child: Text(
    //     fieldText,
    //     style: TextStyle(
    //       fontSize: fieldSize,
    //       fontWeight: fieldWt,
    //       color: MyColor.myMainColor
    //     ),
    //   ),
    // ),
    prefixIcon: prefix,
    prefixIconColor: MyColor.myMainColor,
    // prefixStyle: TextStyle(fontSize: 12),



    hintText: mhintText,
    hintStyle: TextStyle(fontWeight: FontWeight.w300,color: Colors.grey.shade400),


    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: Color(0xff039A88), width: 2),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: Color(0xff039A88), width: 2),
    ),
  );
}
