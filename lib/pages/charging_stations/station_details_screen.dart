import 'package:flutter/material.dart';
import 'package:xaper_smart_car_app/constants/colors.dart';
import 'package:xaper_smart_car_app/constants/image_urls.dart';
import 'package:xaper_smart_car_app/pages/charging_stations/book_now_screen.dart';

class StationDetailsScreen extends StatefulWidget {
  const StationDetailsScreen({Key? key}) : super(key: key);

  @override
  _StationDetailsScreenState createState() => _StationDetailsScreenState();
}

class _StationDetailsScreenState extends State<StationDetailsScreen> {
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
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'CHARGING STATION NAME GOES HERE',
                          style: TextStyle(
                            color: MyColors.secondaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 24
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:MyColors.lightOrangeColor
                        ),
                        height: 50,
                        width: 100,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Image.asset(star_icon),
                            SizedBox(width: 15,),
                            Text('4.5')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.edit_location, color: Colors.black, size: 36,),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('9502 Belmont Ave.'),
                              Text('Saint Augustine, FL 32084'),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                        decoration: BoxDecoration(
                            border: Border.all(color: MyColors.blackColor,),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text('5Km Away', style: TextStyle(fontWeight: FontWeight.w700),),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Text(
                    'Available Connector',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child:Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                              decoration: BoxDecoration(
                                  color: MyColors.lightGreenColor,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(emoji_shocking),
                                  Text('AC 3.3Kw', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.green),),
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('Available', style: TextStyle(color: Colors.black54),)
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                              decoration: BoxDecoration(
                                  color: MyColors.lightPinkColor,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(emoji_shocking, color: Colors.pink,),
                                  Text('DC 3.3Kw', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.pink),),
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('Occupied', style: TextStyle(color: Colors.black54),),
                          ],
                        ),
                      ),
                    ],
                  )
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Text(
                    'Available Connector',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                        decoration: BoxDecoration(
                            color: MyColors.lightGreenColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image.asset(home_icon,),
                      ),
                      SizedBox(width: 10,),
                      Text('Shop Available', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12 ),),
                      SizedBox(width: 20,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                        decoration: BoxDecoration(
                            color: MyColors.lightGreenColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image.asset(like_icon,),
                      ),
                      SizedBox(width: 10,),
                      Text('Toilet Available', style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 12),),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (context, index){
                      return Image.asset(
                        temp_image1,
                        height: 100,
                        width: 100,
                        fit: BoxFit.fill,
                      );
                    },
                  ),
                ),
                SizedBox(height: 40,)

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
                        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>BookNowScreen())),
                        child: Container(
                          height: 60,
                          color: MyColors.primaryColor,
                          child: Center(child: Text('BOOK NOW', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>BookNowScreen())),
                        child: Container(
                          height: 60,
                          color: MyColors.secondaryColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('NAVIGATE', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),),
                              SizedBox(width: 5,),
                              Image.asset(navigate_icon, height: 18,)
                            ],
                          ),
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
