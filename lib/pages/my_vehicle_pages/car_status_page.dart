import 'package:flutter/material.dart';
import 'package:xaper_smart_car_app/constants/colors.dart';
import 'package:xaper_smart_car_app/constants/image_urls.dart';
import 'package:xaper_smart_car_app/pages/connection_pages/payment_screen.dart';
import 'package:xaper_smart_car_app/pages/my_vehicle_pages/car_inspect_details.dart';
import 'package:xaper_smart_car_app/pages/my_vehicle_pages/car_unlock_authentication_page.dart';
class CarStatusPage extends StatefulWidget {
  const CarStatusPage({Key? key}) : super(key: key);

  @override
  _CarStatusPageState createState() => _CarStatusPageState();
}

class _CarStatusPageState extends State<CarStatusPage> {
  bool _isCarUnlocked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                            top: 110,
                            left: 115,
                            child:
                            _isCarUnlocked?
                            GestureDetector(
                              onTap: ()async {
                                try{
                                  _isCarUnlocked =await Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentScreen()));
                                }
                                catch(e){
                                  _isCarUnlocked = false;
                                  setState(() {

                                  });
                                  print('navigator response is null $e');
                                }
                                print('the result is $_isCarUnlocked');

                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                                decoration: BoxDecoration(
                                    color: MyColors.greenColor,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(charging_icon, height: 12,color: MyColors.whiteColor,),
                                    SizedBox(width: 10,),
                                    Text('RECHARGE', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: MyColors.lightBackgroundColorWhite),),
                                  ],
                                ),
                              ),
                            ):
                            GestureDetector(
                              onTap: ()async {
                                _isCarUnlocked =await Navigator.push(context, MaterialPageRoute(builder: (context)=>CarUnlockAuthenticationPage()));
                                print('the result is $_isCarUnlocked');
                                setState(() {

                                });

                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                                decoration: BoxDecoration(
                                    color: MyColors.redColor,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(unlock_icon, height: 12,),
                                    SizedBox(width: 10,),
                                    Text('UNLOCK CAR', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: MyColors.lightBackgroundColorWhite),),
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
                      SizedBox(height: 20,),
                      _isCarUnlocked?
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _isCarUnlocked = false;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 100),
                          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                          decoration: BoxDecoration(
                              border: Border.all(color: MyColors.blackColor,),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text('LOCK CAR'),
                          ),
                        ),
                      ):Container(),
                      SizedBox(height: 20,),
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
      ),
    );
  }
}
