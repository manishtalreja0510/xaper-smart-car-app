import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:xaper_smart_car_app/constants/colors.dart';
import 'package:xaper_smart_car_app/constants/image_urls.dart';
import 'package:xaper_smart_car_app/pages/connection_pages/connected_established_screen.dart';
import 'package:xaper_smart_car_app/pages/connection_pages/connection_not_established.dart';
import 'package:xaper_smart_car_app/pages/connection_pages/connection_step_3.dart';
import 'package:xaper_smart_car_app/pages/home_screen.dart';

class OtpAuthenticationCarUnlock extends StatefulWidget {
  final Color textColor;
  final Color bgColor;
  final Color borderColor;
  final String navigationFrom;

  OtpAuthenticationCarUnlock({required this.bgColor, required this.borderColor, required this.textColor, required this.navigationFrom});

  @override
  _OtpAuthenticationCarUnlockState createState() =>
      _OtpAuthenticationCarUnlockState();
}
class _OtpAuthenticationCarUnlockState extends State<OtpAuthenticationCarUnlock> {
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Form(
        key: formKey,
        child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 8.0, horizontal: 30),
            child: PinCodeTextField(
              appContext: context,
              pastedTextStyle: TextStyle(
                color: Colors.green,
                backgroundColor: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
              length: 4,
              animationType: AnimationType.fade,
              validator: (v) {
                if (v!.length < 3) {
                  // return "I'm from validator";
                } else {
                  return null;
                }
              },
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 70,
                fieldWidth: 50,
                activeFillColor: widget.bgColor,
                selectedFillColor: widget.bgColor,
                inactiveFillColor: widget.bgColor,
                activeColor: widget.borderColor,
                inactiveColor: widget.borderColor,
                selectedColor: widget.borderColor,

              ),
              cursorColor: widget.textColor,
              animationDuration: Duration(milliseconds: 300),
              enableActiveFill: true,
              errorAnimationController: errorController,
              controller: textEditingController,
              keyboardType: TextInputType.number,
              boxShadows: [
                BoxShadow(
                  offset: Offset(0, 1),
                  color: Colors.black12,
                  blurRadius: 10,
                )
              ],
              onCompleted: (v) {
                print("Completed");
              },
              // onTap: () {
              //   print("Pressed");
              // },
              onChanged: (value) {
                print(value);
                setState(() {
                  currentText = value;
                });
                if(currentText!='9731'&& widget.navigationFrom =='connectionStepOTPScreen' && currentText.length== 4 ){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ConnectionNotEstablishedScreen()));
                }
                else if(currentText=='9731'&& widget.navigationFrom =='connectionStepOTPScreen'){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ConnectionStep3()));
                }
                else if(currentText == '0510'&& widget.navigationFrom =='carUnlockOTPSceen'){
                  Navigator.pop(context, true);
                }else if(currentText.length== 4 && currentText!='0510'){
                  Navigator.pop(context, false);
                }
                else{
                  print(currentText);
                }
              },
              beforeTextPaste: (text) {
                print("Allowing to paste $text");
                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                return true;
              },
            )),
      ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            hasError ? "*Please fill up all the cells properly" : "",
            style: TextStyle(
                color: Colors.red,
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
        ),],
    );
  }
}