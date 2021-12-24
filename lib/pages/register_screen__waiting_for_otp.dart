import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:xaper_smart_car_app/constants/colors.dart';
import 'package:xaper_smart_car_app/constants/image_urls.dart';
import 'package:xaper_smart_car_app/pages/register_screen_otp_screen.dart';
class WaitingForOTPScreen extends StatefulWidget {
  const WaitingForOTPScreen({Key? key}) : super(key: key);

  @override
  _WaitingForOTPScreenState createState() => _WaitingForOTPScreenState();
}

class _WaitingForOTPScreenState extends State<WaitingForOTPScreen> {

  @override
  void initState() {
    // TODO: implement initState
    navigateToOTPScreen();
    super.initState();
  }

  navigateToOTPScreen()async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.push(context, MaterialPageRoute(builder: (context)=>EnterOtpScreen()));
  }

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
              SizedBox(height: 60,),
              Row(
                children: [
                  Expanded(child: Text('WAITING FOR OTP', style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700, color: MyColors.primaryColor),)),
                  SizedBox(
                    width: 160,
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Center(child: CircularProgressIndicator()),
              SizedBox(
                height: 50,
              ),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                    decoration: BoxDecoration(
                        color: MyColors.lightBlueColor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:  GestureDetector(
                      onTap: () async{
                        String link = 'https://loopskill.com/';
                        if (await canLaunch(link)) {
                          await launch(link);
                        } else {
                          throw 'Could not launch $link';
                        }
                      },
                      child: Text('Terms and Conditions', textAlign: TextAlign.center, style: TextStyle(color: MyColors.blueColor)),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: Icon(Icons.close, color: MyColors.blueColor, size: 16,),
                  )
                ],
              ),
              SizedBox(height: 100,),
              Center(
                child: GestureDetector(
                  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>EnterOtpScreen())),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                    decoration: BoxDecoration(
                        color: MyColors.primaryColor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text('ENTER OTP', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: MyColors.lightBackgroundColorWhite),),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
