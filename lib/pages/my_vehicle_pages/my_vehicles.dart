import 'package:flutter/material.dart';
import 'package:xaper_smart_car_app/constants/colors.dart';
import 'package:xaper_smart_car_app/constants/image_urls.dart';
import 'package:xaper_smart_car_app/constants/widgets.dart';
import 'package:xaper_smart_car_app/pages/my_vehicle_pages/add_your_vehicle_page.dart';
class MyVehiclesPage extends StatefulWidget {
  const MyVehiclesPage({Key? key}) : super(key: key);

  @override
  _MyVehiclesPageState createState() => _MyVehiclesPageState();
}

class _MyVehiclesPageState extends State<MyVehiclesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  padding: EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('MY VEHICLES', style: TextStyle(color: MyColors.primaryColor, fontSize: 22, fontWeight: FontWeight.w700),),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(child: Text('Monotonectally implement resource-leveling experiences', style: TextStyle(color: MyColors.darkGreyColor, fontSize: 18 ))),
                          SizedBox(width: 100,),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      GridView.builder(
                        itemCount: 6,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            childAspectRatio: 0.8
                          ),
                          itemBuilder: (context, index){
                          if(index==5){
                            return GestureDetector(
                              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>AddYourVehiclePage())),
                              child: Card(
                                // margin: EdgeInsets.only(bottom: 30),
                                color: MyColors.whiteColor,
                                // shape: RoundedRectangleBorder(
                                //   borderRadius: BorderRadius.circular(20),
                                // ),
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.add, size: 42,),
                                      SizedBox(height: 10,),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Text('ADD VEHICLE', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),),
                                      ),





                                    ],
                                  ),
                                ),
                              ),
                            );
                          }
                            return MyVehiclesCardWidget();
                          }
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
