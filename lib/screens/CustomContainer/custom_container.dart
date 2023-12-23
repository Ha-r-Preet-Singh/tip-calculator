import 'package:flutter/material.dart';
import 'package:tip_caculator/screens/CustomText/custom_text.dart';

class CustomContainer extends StatelessWidget {

  Color bgColor;
  double mWidth;
  double mHeight;
  BorderRadius bR;
  // VoidCallback onTap;

  String btnText;
  FontWeight cfwt;
  double cfSize;
  Color cfColor;







  CustomContainer(
  {
   required this.mWidth,
    required this.mHeight,
     this.bgColor = Colors.white,
    // required this.onTap,
     required this.bR ,
    required this.cfSize,
    required this.btnText,

    required this.cfwt,




    this.cfColor = Colors.white,


}
      );


  @override
  Widget build(BuildContext context) {
    return Container(
      width: mWidth,
      height: mHeight,
      decoration: BoxDecoration(
        borderRadius: bR,
        color: bgColor,
      ),
      child: Center(child: Text(btnText,style: TextStyle(fontSize: cfSize,fontWeight: cfwt,color: cfColor),)),


    );
  }
}

