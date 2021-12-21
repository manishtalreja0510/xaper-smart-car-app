import 'package:flutter/material.dart';
import 'package:xaper_smart_car_app/constants/colors.dart';
import 'package:xaper_smart_car_app/constants/image_urls.dart';
class CarInspectDetailsPage extends StatefulWidget {
  const CarInspectDetailsPage({Key? key}) : super(key: key);

  @override
  _CarInspectDetailsPageState createState() => _CarInspectDetailsPageState();
}

class _CarInspectDetailsPageState extends State<CarInspectDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.lightGreyColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.arrow_back)),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                  child: Column(
                    children: [
                      Text('BMW X5', style: TextStyle(color: MyColors.primaryColor, fontSize: 28, fontWeight: FontWeight.w500),),
                      SizedBox(height: 10,),
                      Text('Compellingly brand real-time 8897', style: TextStyle(fontSize: 12)),
                      SizedBox(
                        height: 30,
                      ),
                      Image.asset(car_top_view, height: 250,),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Card(
                                color: MyColors.whiteColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Container(
                                  height: 160,
                                  width: MediaQuery.of(context).size.width/2 - 60,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 20,),
                                      Image.asset(temperature_icon),
                                      SizedBox(height: 15,),
                                      Text('18°', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: MyColors.blueColor),),
                                      SizedBox(height: 10,),
                                      Text('Temperature', style: TextStyle(fontSize: 18,),),
                                      SizedBox(height: 30,),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 15,),
                              Card(
                                color: MyColors.whiteColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Container(
                                  height: 160,
                                  width: MediaQuery.of(context).size.width/2 - 60,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 20,),
                                      Image.asset(charging_icon),
                                      SizedBox(height: 15,),
                                      Text('65%', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: MyColors.greenColor),),
                                      SizedBox(height: 10,),
                                      Text('Charge', style: TextStyle( fontSize: 18,),),
                                      SizedBox(height: 30,),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Card(
                                color: MyColors.whiteColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Container(
                                  height: 160,
                                  width: MediaQuery.of(context).size.width/2 - 60,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 20,),
                                      Image.asset(tire_pressure_icon),
                                      SizedBox(height: 15,),
                                      Text('19%', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: MyColors.blueColor),),
                                      SizedBox(height: 10,),
                                      Text('Tire Pressure', style: TextStyle(fontSize: 18,),),
                                      SizedBox(height: 30,),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 15,),
                              Card(
                                color: MyColors.whiteColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Container(
                                  width: MediaQuery.of(context).size.width/2 - 60,
                                  height: 160,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 18,),
                                      Image.asset(electrical_wiring_icon),
                                      SizedBox(height: 20,),
                                      Image.asset(tick_icon),
                                      SizedBox(height: 15,),
                                      Text('Electrical Wiring', style: TextStyle(fontSize: 18,),),
                                      SizedBox(height: 30,),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
