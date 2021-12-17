import 'package:flutter/material.dart';
import 'package:xaper_smart_car_app/constants/colors.dart';
import 'package:xaper_smart_car_app/constants/image_urls.dart';
class BookNowScreen extends StatefulWidget {
  const BookNowScreen({Key? key}) : super(key: key);

  @override
  _BookNowScreenState createState() => _BookNowScreenState();
}

class _BookNowScreenState extends State<BookNowScreen> {
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
                    station_details_background_image,
                    width: MediaQuery.of(context).size.width,
                    height: 200,
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
                        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                        decoration: BoxDecoration(
                            color: MyColors.lightBlueColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(navigate_icon, color: MyColors.blueColor,),
                          ],
                        ),
                      ),
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
                        child: Center(
                          child: Text('5Km Away', style: TextStyle(color: MyColors.blueColor),),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    margin: EdgeInsets.only(right: 230),
                    decoration: BoxDecoration(
                        border: Border.all(color: MyColors.blackColor,),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text('View Details', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black54),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Text(
                    'Selected Connector',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    child:Row(
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
                              SizedBox(width: 10,),
                              Text('AC 3.3Kw', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.green),),
                            ],
                          ),
                        ),

                      ],
                    )
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                    decoration: BoxDecoration(
                        color: MyColors.lightBlueColor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(clock_icon),
                        SizedBox(width: 10,),
                        Text('Select Your Time Slot', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: MyColors.blueColor),),
                      ],
                    ),
                  ),
                ),

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
                          color: MyColors.redColor,
                          child: Center(child: Text('BOOK YOUR SLOT', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
