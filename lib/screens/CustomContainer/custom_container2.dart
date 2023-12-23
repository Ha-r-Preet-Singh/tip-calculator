import 'package:flutter/material.dart';
import 'package:tip_caculator/screens/CustomText/custom_text.dart';

class CustomContainer2 extends StatelessWidget {

  Color bgColor;
  double mWidth;
  double mHeight;
  BorderRadius bR;
  // VoidCallback onTap;

  String btnText;
  FontWeight cfwt;
  double cfSize;
  Color cfColor;





  Color scfColor;
  String sbtnText;
  double scfSize;
  FontWeight scfwt;


  CustomContainer2(
      {
        required this.mWidth,
        required this.mHeight,
        this.bgColor = Colors.white,
        // required this.onTap,
        required  this.bR ,

        required this.btnText,
        required this.sbtnText,
        required this.cfwt,
        required this.scfwt,

        required this.cfSize,
        required this.scfSize,

        this.cfColor = Colors.white,
        this.scfColor = Colors.white,

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
      child: Padding(
        padding: const EdgeInsets.only(top: 10,bottom: 10,left: 17,right: 13,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(btnText,style: TextStyle(fontSize: cfSize,fontWeight: cfwt,color: cfColor),),
            Text(sbtnText,style: TextStyle(fontSize: scfSize,fontWeight: scfwt,color: scfColor),),
          ],
        ),
      ),


    );
  }
}

