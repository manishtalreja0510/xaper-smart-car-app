import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:xaper_smart_car_app/constants/colors.dart';
import 'package:xaper_smart_car_app/constants/image_urls.dart';
import 'package:xaper_smart_car_app/pages/register_screen__waiting_for_otp.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailOrPhoneController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: MyColors.lightOrangeColor),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset(
              abcazLogo,
              height: 80,
              // width: 120,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  'WELCOME TO ABCAZ',
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      color: MyColors.primaryColor),
                )),
                SizedBox(
                  width: 160,
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'REGISTER',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: MyColors.primaryColor),
            ),
            TextField(
              controller: emailOrPhoneController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  suffixIcon: Image.asset(
                    phone_icon,
                  ),
                  labelText: 'Enter your phone number'),
              onChanged: (value) {
                if (value.length >= 10) {
                  FocusScope.of(context).unfocus();
                }
              },
            ),
            SizedBox(
              height: 100,
            ),
            Center(
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WaitingForOTPScreen())),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                  decoration: BoxDecoration(
                      color: MyColors.primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'ENTER AND PROCEED',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: MyColors.lightBackgroundColorWhite),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Already have an account?'),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: MyColors.blackColor,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text('Sign In Now'),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () async{
                      String link = 'https://loopskill.com/';
                      if (await canLaunch(link)) {
                        await launch(link);
                      } else {
                        throw 'Could not launch $link';
                      }
                    },
                    child: Text('Terms and Conditions', textAlign: TextAlign.center,),
                  ),
                ),
                SizedBox(
                  width: 130,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
