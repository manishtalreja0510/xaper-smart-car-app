import 'package:flutter/material.dart';
import 'package:xaper_smart_car_app/constants/colors.dart';
import 'package:xaper_smart_car_app/constants/image_urls.dart';
class EnterOtpScreen extends StatefulWidget {
  const EnterOtpScreen({Key? key}) : super(key: key);

  @override
  _EnterOtpScreenState createState() => _EnterOtpScreenState();
}

class _EnterOtpScreenState extends State<EnterOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: MyColors.lightOrangeColor
          ),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Image.asset(abcazLogo, height: 80, width: 120, fit: BoxFit.fill,),
              SizedBox(height: 80,),
              Row(
                children: [
                  Expanded(child: Text('ENTER OTP', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: MyColors.primaryColor),)),
                  SizedBox(
                    width: 160,
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(child: Text('Enter the OTP received in your mobile number', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: MyColors.primaryColor),)),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
              SizedBox(height: 250,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Didn\'t received?', style: TextStyle(color: MyColors.primaryColor),),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    decoration: BoxDecoration(
                        border: Border.all(color: MyColors.primaryColor,),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text('Re-send',style: TextStyle(color: MyColors.primaryColor),),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
