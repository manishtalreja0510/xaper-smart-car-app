import 'package:flutter/material.dart';
import 'package:xaper_smart_car_app/constants/colors.dart';
import 'package:xaper_smart_car_app/constants/image_urls.dart';
import 'package:xaper_smart_car_app/pages/my_vehicle_pages/car_status_page.dart';
import 'package:xaper_smart_car_app/pages/my_vehicle_pages/my_vehicles.dart';

BottomNavigationBar kBottomNavbar = BottomNavigationBar(
  fixedColor: Colors.black,
  items: [
    BottomNavigationBarItem(icon: Image.asset(menu_icon), title: Container()),
    BottomNavigationBarItem(icon: Image.asset(car_icon), title: Container()),
  ],
  backgroundColor: MyColors.blackColor,
);

Container kBottomNavbarContainer(BuildContext context) {
  return Container(
    height: 60,
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
      color: MyColors.blackColor,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(menu_icon),
        GestureDetector(
          onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> MyVehiclesPage())),
          child: Image.asset(car_icon),
        )
      ],
    ),
  );
}


class MyVehiclesCardWidget extends StatelessWidget {
  const MyVehiclesCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return GestureDetector(
        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>CarStatusPage())),
        child: Card(
        // margin: EdgeInsets.only(bottom: 30),
        color: MyColors.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Text('BMW X5', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),),
              SizedBox(height: 20,),
              Image.asset(bmwImage),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset(car_status_charging_indicator),
              ),



            ],
          ),
        ),
    ),
      );
  }
}

