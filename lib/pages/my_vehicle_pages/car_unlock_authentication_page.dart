import 'package:flutter/material.dart';
import 'package:xaper_smart_car_app/constants/colors.dart';
import 'package:xaper_smart_car_app/constants/image_urls.dart';
import 'package:xaper_smart_car_app/pages/my_vehicle_pages/otp_authentication_car_unlock.dart';
class CarUnlockAuthenticationPage extends StatefulWidget {
  const CarUnlockAuthenticationPage({Key? key}) : super(key: key);

  @override
  _CarUnlockAuthenticationPageState createState() => _CarUnlockAuthenticationPageState();
}

class _CarUnlockAuthenticationPageState extends State<CarUnlockAuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.darkBlueColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset(unlock_icon, height: 30, fit: BoxFit.fill,),
              SizedBox(height: 20,),
              Text(
                'To Unlock\nEnter Your Code To\nAuthenticate Enter',
                textAlign: TextAlign.center,
                style: TextStyle(color: MyColors.whiteColor, fontSize: 24),
              ),
              SizedBox(height: 20,),
              OtpAuthenticationCarUnlock(bgColor: MyColors.lightDarkBlueColor, borderColor: MyColors.darkBlueColor, textColor: MyColors.whiteColor, navigationFrom: 'carUnlockOTPSceen',)
            ],
          ),
        ),
      ),
    );
  }
}
