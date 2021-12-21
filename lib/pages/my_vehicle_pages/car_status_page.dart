import 'package:flutter/material.dart';
import 'package:xaper_smart_car_app/constants/colors.dart';
import 'package:xaper_smart_car_app/constants/image_urls.dart';
import 'package:xaper_smart_car_app/pages/my_vehicle_pages/car_inspect_details.dart';
class CarStatusPage extends StatefulWidget {
  const CarStatusPage({Key? key}) : super(key: key);

  @override
  _CarStatusPageState createState() => _CarStatusPageState();
}

class _CarStatusPageState extends State<CarStatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.arrow_back)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: Column(
                  children: [
                    Image.asset(carStatusCarDetails),
                    SizedBox(height: 40,),
                    Stack(
                      children: [
                        Image.asset(carStatusBackground),
                        Positioned(
                          top: 100,
                          left: 100,
                          child: GestureDetector(
                            // onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>EnterOtpScreen())),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                              decoration: BoxDecoration(
                                  color: MyColors.redColor,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Row(
                                children: [
                                  Image.asset(menu_icon, height: 12,),
                                  SizedBox(width: 10,),
                                  Text('INSPECT CAR', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: MyColors.lightBackgroundColorWhite),),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 40,),
                    Text('BMW X5', style: TextStyle(color: MyColors.primaryColor, fontSize: 24, fontWeight: FontWeight.w500),),
                    SizedBox(height: 10,),
                    Text('Compellingly brand real-time 8897', style: TextStyle(fontSize: 12)),
                    SizedBox(height: 40,),
                    GestureDetector(
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>CarInspectDetailsPage())),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                        decoration: BoxDecoration(
                            color: MyColors.secondaryColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text('INSPECT CAR', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: MyColors.lightBackgroundColorWhite),),
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
