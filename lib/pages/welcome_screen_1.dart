import 'package:flutter/material.dart';
import 'package:xaper_smart_car_app/constants/colors.dart';
import 'package:xaper_smart_car_app/constants/image_urls.dart';
import 'package:xaper_smart_car_app/pages/home_screen.dart';
import 'package:xaper_smart_car_app/pages/register_screen.dart';

class WelcomeScreen1 extends StatefulWidget {
  const WelcomeScreen1({Key? key}) : super(key: key);

  @override
  _WelcomeScreen1State createState() => _WelcomeScreen1State();
}



class _WelcomeScreen1State extends State<WelcomeScreen1> {

  // List<Widget> kIcons = <Icon>[
  //   Image.asset(welcomeScreen1),
  //   Icon(Icons.home),
  //   Icon(Icons.android),
  //   Icon(Icons.alarm),
  //   Icon(Icons.face),
  //   Icon(Icons.language),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: DefaultTabController(
            length: 3,
            // Use a Builder here, otherwise `DefaultTabController.of(context)` below
            // returns null.
            child: Builder(
              builder: (BuildContext context) => Column(
                children: <Widget>[
                  // TabPageSelector(),
                  Expanded(
                    child: IconTheme(
                      data: IconThemeData(
                        size: 128.0,
                        color: Theme.of(context).accentColor,
                      ),
                      child: TabBarView(children: [
                        Stack(
                          children: [
                            Image.asset(welcomeScreen1,
                              fit: BoxFit.fill,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                            ),
                            Positioned(
                              left: MediaQuery.of(context).size.width/2 - 15,
                              bottom:50,
                              child: GestureDetector(
                                  onTap: (){
                              final TabController controller =
                              DefaultTabController.of(context)!;
                              if (!controller.indexIsChanging) {
                              controller.animateTo(2);
                              }
                              },
                                  child: Text('SKIP', style: TextStyle(color: MyColors.blueColor),), ),
                            )

                          ],
                        ),
                        Stack(
                          children: [
                            Image.asset(welcomeScreen2,
                              fit: BoxFit.fill,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                            ),
                            Positioned(
                              left: MediaQuery.of(context).size.width/2 - 15,
                              bottom:50,
                              child: GestureDetector(
                                onTap: (){
                                  final TabController controller =
                                  DefaultTabController.of(context)!;
                                  if (!controller.indexIsChanging) {
                                    controller.animateTo(2);
                                  }
                                },
                                child: Text('SKIP', style: TextStyle(color: MyColors.blueColor),), ),
                            )

                          ],
                        ),
                        Stack(
                          children: [
                            Image.asset(welcomeScreen3,
                              fit: BoxFit.fill,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                            ),
                            Positioned(
                              left: MediaQuery.of(context).size.width/2 - 15,
                              bottom:50,
                              child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                                  },
                                child: Text('SKIP', style: TextStyle(color: MyColors.blueColor),), ),
                            ),

                          ],
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
