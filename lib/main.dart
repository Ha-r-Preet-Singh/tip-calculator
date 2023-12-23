import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tip_caculator/screens/CustomContainer/custom_container.dart';
import 'package:tip_caculator/screens/CustomContainer/custom_container2.dart';
import 'package:tip_caculator/screens/CustomText/custom_text.dart';
import 'package:tip_caculator/screens/Custom_Textfield/custom_textfield.dart';
import 'package:tip_caculator/screens/static_ui.dart';
import 'package:tip_caculator/uihelper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var amtController = TextEditingController();
  var customTipController = TextEditingController();

  var billAmt = 0.0;

  var tipPersent = 0.0;

  var noOfPerson = 2;

  var totalBill = 0.0;

  var tipAmt = 0.0;

  var perPersonAmt = 0.0;

  bool isCustomTip = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(

          backgroundColor: MyColor.myBgColor,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Container1(),
                  SizedBox(height: 40,),

                 
                  Container2(),
                  SizedBox(height: 40,),
                  //
                  Container3(),
                  SizedBox(height: 40,),
                  //
                  Container4(),
                  SizedBox(height: 40,),
                  //
                  Container5(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget Container1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/images/cap.png",
          scale: 1.2,
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomText(
                    fWt: FontWeight.w800,
                    fSize: 14,
                    textColor: MyColor.myTextColor,
                    fText: "Mr"),
                CustomText(
                    fWt: FontWeight.w900,
                    fSize: 33,
                    textColor: MyColor.myTextColor,
                    fText: "TIP"),
              ],
            ),
            CustomText(
                fWt: FontWeight.w800,
                fSize: 19,
                textColor: MyColor.myTextColor,
                fText: "Calculator"),
          ],
        ),
      ],
    );
  }

  Widget Container2() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(color: Colors.white)),
      child: Container(
        height: 200,
        width: 380,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(
                  fWt: FontWeight.w800,
                  fSize: 18,
                  textColor: MyColor.myTextColor,
                  fText: "Total p/person"),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                      fWt: FontWeight.w900,
                      fSize: 22,
                      textColor: MyColor.myTextColor,
                      fText: "\$"),
                  CustomText(
                      fWt: FontWeight.w900,
                      fSize: 52,
                      textColor:MyColor.myTextColor,
                      fText: perPersonAmt == 0
                          ? "000"
                          : perPersonAmt.toStringAsFixed(2)),
                ],
              ),
              Divider(
                thickness: 2,
                color: Colors.grey.shade400,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          fWt: FontWeight.w500,
                          fSize: 17,
                          textColor: MyColor.myTextColor,
                          fText: "Total bill"),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomText(
                              fWt: FontWeight.w900,
                              fSize: 12,
                              textColor: MyColor.myMainColor,
                              fText: "\$"),
                          CustomText(
                              fWt: FontWeight.w900,
                              fSize: 25,
                              textColor: MyColor.myMainColor,
                              fText: totalBill == 0
                                  ? "000"
                                  : totalBill.toString()),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          fWt: FontWeight.w500,
                          fSize: 17,
                          textColor: MyColor.myTextColor,
                          fText: "Total tip"),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomText(
                              fWt: FontWeight.w900,
                              fSize: 12,
                              textColor: MyColor.myMainColor,
                              fText: "\$"),
                          CustomText(
                              fWt: FontWeight.w900,
                              fSize: 25,
                              textColor: MyColor.myMainColor,
                              fText: tipAmt == 0 ? "000" : tipAmt.toString()),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Container3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
                fWt: FontWeight.w800,
                fSize: 17,
                textColor: MyColor.myTextColor,
                fText: "Enter"),
            CustomText(
                fWt: FontWeight.w500,
                fSize: 17,
                textColor: MyColor.myTextColor,
                fText: "your bill"),
          ],
        ),

        CustomTextfield(

          onChange: (value) {
            billAmt = double.parse(value);
            updateTipBoard();
            setState(() {

            });

          },
          controller: amtController,
          szHeight: 50,
          szWidth: 226,
          // mController: customTipController,
        ),
      ],
    );
  }

  Widget Container4() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
                fWt: FontWeight.w800,
                fSize: 17,
                textColor: MyColor.myTextColor,
                fText: "Choose"),
            CustomText(
                fWt: FontWeight.w500,
                fSize: 17,
                textColor: MyColor.myTextColor,
                fText: "your tip"),
          ],
        ),
        Column(

          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    isCustomTip = false;
                    tipPersent = 0.1;


                    updateTipBoard();
                    setState(() {});
                  },
                  child: CustomContainer2(
                    mWidth: 70,
                    mHeight: 50,
                    bgColor: MyColor.myMainColor,
                    bR: BorderRadius.circular(7),
                    btnText: "10",
                    cfwt: FontWeight.w800,
                    cfSize: 25,
                    sbtnText: "%",
                    scfSize: 12,
                    scfwt: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    tipPersent = 0.15;
                    isCustomTip = false;

                    updateTipBoard();
                    setState(() {});
                  },
                  child: CustomContainer2(
                    mWidth: 70,
                    mHeight: 50,
                    bgColor: MyColor.myMainColor,
                    bR: BorderRadius.circular(7),
                    btnText: "15",
                    cfwt: FontWeight.w800,
                    cfSize: 25,
                    sbtnText: "%",
                    scfSize: 12,
                    scfwt: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    tipPersent = 0.2;
                    isCustomTip = false;
                    updateTipBoard();
                    setState(() {});
                  },
                  child: CustomContainer2(
                    mWidth: 70,
                    mHeight: 50,
                    bgColor: MyColor.myMainColor,
                    bR: BorderRadius.circular(7),
                    btnText: "20",
                    cfwt: FontWeight.w800,
                    cfSize: 25,
                    sbtnText: "%",
                    scfSize: 12,
                    scfwt: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),




            Stack(
              children: [
                SizedBox(
                  height: 50,
                  width: 226,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: customTipController,

                    cursorColor: MyColor.myMainColor,
                    onChanged: (value){
                      tipPersent = double.parse(value)/100;
                      updateTipBoard();
                      setState(() {

                      });
                    },
                    decoration: getCustomTextFieldDecoration( prefix: Icon(Icons.credit_score),  mhintText: "Your tip"),
                  ),
                ),
                Visibility(
                  visible: !isCustomTip ,
                  child: InkWell(
                    onTap: (){
                      isCustomTip = true;
                      setState(() {

                      });
                    },
                    child: CustomContainer(
                      mWidth: 226,
                      mHeight: 50,
                      bR: BorderRadius.circular(7),
                      bgColor: MyColor.myMainColor,
                      btnText: "Custom tip",
                      cfwt: FontWeight.w700,
                      cfSize: 19,
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ],
    );
  }

  Widget Container5() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
                fWt: FontWeight.w800,
                fSize: 17,
                textColor: MyColor.myTextColor,
                fText: "Split"),
            CustomText(
                fWt: FontWeight.w500,
                fSize: 17,
                textColor: MyColor.myTextColor,
                fText: "the total"),
          ],
        ),
        Row(
          children: [
            InkWell(
              onTap: () {
                if (noOfPerson > 1) {
                  noOfPerson--;
                  updateTipBoard();
                  setState(() {});
                }
              },
              child: CustomContainer(
                mWidth: 60,
                mHeight: 50,
                bR: BorderRadius.only(
                    topLeft: Radius.circular(7),
                    bottomLeft: Radius.circular(7)),
                cfSize: 33,
                btnText: "-",
                cfwt: FontWeight.w800,
                bgColor: MyColor.myMainColor,
              ),
            ),
            CustomContainer(
              mWidth: 106,
              mHeight: 50,
              bR: BorderRadius.only(
                  topLeft: Radius.circular(0), bottomLeft: Radius.circular(0)),
              cfSize: 26,
              btnText: noOfPerson.toString(),
              cfwt: FontWeight.w800,
              bgColor: Colors.white,
              cfColor: MyColor.myTextColor,
            ),
            InkWell(
              onTap: () {
                noOfPerson++;
                updateTipBoard();
                setState(() {});
              },
              child: CustomContainer(
                mWidth: 60,
                mHeight: 50,
                bR: BorderRadius.only(
                    topRight: Radius.circular(7),
                    bottomRight: Radius.circular(7)),
                cfSize: 30,
                btnText: "+",
                cfwt: FontWeight.w800,
                bgColor: MyColor.myMainColor,
              ),
            ),
          ],
        ),
      ],
    );
  }

  void updateTipBoard() {
    billAmt = double.parse(amtController.text.toString());

    tipAmt = billAmt * tipPersent;
    totalBill = billAmt + tipAmt;
    perPersonAmt = totalBill / noOfPerson;
  }
}
