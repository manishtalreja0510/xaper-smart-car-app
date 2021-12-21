import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:xaper_smart_car_app/constants/colors.dart';
import 'package:xaper_smart_car_app/constants/image_urls.dart';
import 'package:xaper_smart_car_app/pages/charging_stations/book_now_screen.dart';
import 'package:xaper_smart_car_app/pages/home_screen.dart';

class SelectDateAndTimeScreen extends StatefulWidget {
  const SelectDateAndTimeScreen({Key? key}) : super(key: key);

  @override
  _SelectDateAndTimeScreenState createState() => _SelectDateAndTimeScreenState();
}

class _SelectDateAndTimeScreenState extends State<SelectDateAndTimeScreen> {
  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              ListView(
                children: [
                  Container(
                    child: Image.asset(
                      station_details_background_image2,
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Select Your Date',
                        style: TextStyle(
                          fontSize: 18
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 60),
                        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                        decoration: BoxDecoration(
                            border: Border.all(color: MyColors.blackColor,),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text('21 JULY 2021'),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Select Time Slot',
                        style: TextStyle(
                            fontSize: 18
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TimePickerSpinner(
                        is24HourMode: true,
                        normalTextStyle: TextStyle(
                            fontSize: 18,
                            color: MyColors.lightBlackColor
                        ),
                        highlightedTextStyle: TextStyle(
                            fontSize: 24,
                            color: MyColors.blackColor
                        ),
                        spacing: 30,
                        itemHeight: 40,
                        isForce2Digits: true,
                        onTimeChange: (time) {
                          setState(() {
                            _dateTime = time;
                          });
                        },
                      )
                    ],
                  )

                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 60,
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Booked Successfully!!')));
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                          },
                          child: Container(
                            height: 60,
                            color: MyColors.redColor,
                            child: Center(child: Text('SET DATE AND TIME', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
