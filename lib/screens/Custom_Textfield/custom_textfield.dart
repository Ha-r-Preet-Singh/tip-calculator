import 'package:flutter/material.dart';
import 'package:tip_caculator/uihelper.dart';

class CustomTextfield extends StatefulWidget {
  double szWidth;
  double szHeight;
  Color cursorcolr;

  Function(String) onChange;



  TextEditingController controller;
  // TextEditingController mController;

  CustomTextfield({
    // required this.mController,
     required this.controller,
    required this.szHeight,
    required this.szWidth,
    this.cursorcolr = const Color(0xff039A88),
    required this.onChange,
  });

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  var billAmt = 0.0;
  var tipPersent = 0.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.szWidth,
      height: widget.szHeight,
      child: TextField(
        controller: widget.controller,


        cursorColor: widget.cursorcolr,

        keyboardType: TextInputType.number,
        onChanged: widget.onChange,
        decoration: getCustomTextFieldDecoration(
          prefix: Icon(Icons.attach_money),

          mhintText: "Amount",
          fieldText: "\$",
          fieldSize: 25,
          fieldWt: FontWeight.w900,



          prefixStyleWt: FontWeight.w900,
        ),
      ),
    );
  }


}
