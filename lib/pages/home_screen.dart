import 'package:flutter/material.dart';
import 'package:xaper_smart_car_app/constants/colors.dart';
import 'package:xaper_smart_car_app/constants/image_urls.dart';
import 'package:xaper_smart_car_app/constants/widgets.dart';
import 'package:xaper_smart_car_app/pages/charging_stations/station_details_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        bottomNavigationBar: kBottomNavbarContainer(context),
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: DefaultTabController(
              length: 2,
              // Use a Builder here, otherwise `DefaultTabController.of(context)` below
              // returns null.
              child: Builder(
                builder: (BuildContext context) => Stack(
                  children: <Widget>[
                    // TabPageSelector(),
                    Container(
                      child: IconTheme(
                        data: IconThemeData(
                          size: 128.0,
                          color: Theme.of(context).accentColor,
                        ),
                        child: TabBarView(children: [
                          _mapScreen(),
                          _listViewScreen()
                        ]),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: MyColors.blackColor,
                        borderRadius: BorderRadius.circular(5), // Creates border
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
                      child: TabBar(
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(5), // Creates border
                            color: MyColors.lightBackgroundColorWhite),
                        unselectedLabelColor: MyColors.whiteColor,
                        labelColor: MyColors.blackColor,
                        // indicatorColor: MyColors.secondaryColor,
                        tabs: [
                          Tab(text:'Maps',),
                          Tab(text:'ListView',),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }



  Widget _mapScreen(){
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                homeScreenBackground,
              ),
              fit: BoxFit.fill
          )
      ),
    );
  }
  Widget _listViewScreen(){
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 100),
      decoration: BoxDecoration(
        color: MyColors.lightBackgroundColorWhite,
        ),
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.edit_location, color: Colors.black, size: 36,),
                        SizedBox(width: 15,),
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
                        child: Text('Filter'),
                      ),
                    )
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 20,
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                itemBuilder: (context, index){
                  return GestureDetector(
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>StationDetailsScreen())),
                    child: Image.asset(
                      homePageSampleData,
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width,
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
