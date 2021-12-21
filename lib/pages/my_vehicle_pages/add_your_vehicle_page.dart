import 'package:flutter/material.dart';
import 'package:xaper_smart_car_app/constants/colors.dart';
import 'package:xaper_smart_car_app/constants/image_urls.dart';
class AddYourVehiclePage extends StatefulWidget {
  const AddYourVehiclePage({Key? key}) : super(key: key);

  @override
  _AddYourVehiclePageState createState() => _AddYourVehiclePageState();
}

class _AddYourVehiclePageState extends State<AddYourVehiclePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.arrow_back)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ADD YOUR VEHICLE', style: TextStyle(color: MyColors.secondaryColor, fontSize: 22, fontWeight: FontWeight.w700),),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(child: Text('Take picture of your car with makers and model number the system Ai will do the rest of the things.', style: TextStyle(color: MyColors.darkGreyColor, fontSize: 14 ))),
                        SizedBox(width: 100,),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                      decoration: BoxDecoration(
                          color: MyColors.darkBlueColor,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Optional',  style: TextStyle(fontSize: 10, color: MyColors.greenColor)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(camera_icon),
                              SizedBox(width: 10,),
                              Text('Click here to take photo',  style: TextStyle( fontSize: 12, color: MyColors.lightBackgroundColorWhite))
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text('VEHICLE TYPE', style: TextStyle(color: MyColors.blackColor, fontSize: 18, fontWeight: FontWeight.w700, letterSpacing: -0.5,),),
                    SizedBox(height: 60,),
                    Text('COMPANY NAME', style: TextStyle(color: MyColors.blackColor, fontSize: 18, fontWeight: FontWeight.w700, letterSpacing: -0.5,),),
                    SizedBox(height: 60,),
                    Text('BRAND NAME', style: TextStyle(color: MyColors.blackColor, fontSize: 18, fontWeight: FontWeight.w700, letterSpacing: -0.5,),),
                    SizedBox(height: 60,),
                    Text('ACCESS PASSWORD', style: TextStyle(color: MyColors.blackColor, fontSize: 18, fontWeight: FontWeight.w700, letterSpacing: -0.5,),),
                    SizedBox(height: 60,),
                    GestureDetector(
                      // onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>EnterOtpScreen())),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                        decoration: BoxDecoration(
                            color: MyColors.primaryColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text('ADD NOW',textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: MyColors.lightBackgroundColorWhite),),
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
