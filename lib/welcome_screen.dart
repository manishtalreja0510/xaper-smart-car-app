import 'package:flutter/material.dart';
import 'package:xaper_smart_car_app/constants/colors.dart';
import 'package:xaper_smart_car_app/pages/register_screen.dart';

import 'constants/image_urls.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  PageController _pageController = new PageController();
  bool bgVisibility = false;
  double pagePosition = 0;


  void _skipButton(){
    _pageController.animateToPage(2,  duration: Duration(milliseconds: 500), curve: Curves.decelerate);
    bgVisibility = true;
    setState(() {

    });
  }
  @override
  void initState() {
    // TODO: implement initState
    _pageController.addListener(() async{
      pagePosition = _pageController.page!;
      if(_pageController.page!<=0.3){
        print('value set to false');
        bgVisibility = false;
      }
      setState(() {

      });
      if(_pageController.page==1){
        await Future.delayed(Duration(milliseconds: 500),);
        bgVisibility = true;

        setState(() {

        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.lightOrangeColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            PageView(
              scrollDirection: Axis.vertical,
              controller: _pageController,
              children: [

                page1(),
                page2(),
                page3()
              ],
            ),
            // Positioned(
            //   bottom: (MediaQuery.of(context).size.height/2)-50,
            //   left: 20,
            //   child: Padding(
            //     padding: EdgeInsets.only(bottom: 90),
            //     child: Column(
            //       children: [
            //         Icon(Icons.circle, color: Colors.yellow.withOpacity(opacity1),),
            //         Icon(Icons.circle, color: Colors.yellow.withOpacity(opacity2),),
            //         Icon(Icons.circle, color: Colors.yellow.withOpacity(opacity3),),
            //
            //       ],
            //     )
            //   ),
            // ),
          ],
        ),
      ),
    );
  }


  Container page1(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Visibility(
            visible: true,
            child: Positioned(
              left: 80,
              right: 80,
              top: 80,
              child: Image.asset(abcazLogo, height: 100, width: 100, fit: BoxFit.fill,),
            ),
          ),
          Visibility(
            visible: true,
            child: Positioned(
                left: 0,
                right: 0,
                top: 420,
                child: Text(
                  '01',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 200, color: MyColors.whiteColor),
                )
            ),
          ),
          Visibility(
            visible: true,
            child: Positioned(
                left: 0,
                right: 0,
                bottom: 80,
                child: Text(
                  'YOUR SMART CAR',
                  textAlign: TextAlign.center,
                  style: TextStyle( fontSize: 14),
                )
            ),
          ),
          Visibility(
            visible: true,
            child: Positioned(
                left: 0,
                right: 0,
                bottom: 40,
                child: GestureDetector(
                  onTap: _skipButton,
                  child: Text(
                    'SKIP',
                    textAlign: TextAlign.center,
                    style: TextStyle( fontSize: 14, color: MyColors.blueColor),
                  ),
                )
            ),
          ),
          Positioned(
            left: 120,
            right: 120,
            top: 280,
            child: Image.asset(car_top_view, height: 280, width: 150, fit: BoxFit.fill,),
          ),

        ],
      ),
    );
  }
  Container page2(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Visibility(
            visible: bgVisibility,
            child: Positioned(
              left: 80,
              right: 80,
              top: 80,
              child: Image.asset(abcazLogo, height: 100, width: 100, fit: BoxFit.fill,),
            ),
          ),
          Visibility(
            visible: bgVisibility,
            child: Positioned(
                left: 0,
                right: 0,
                top: 420,
                child: Text(
                  '02',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 200, color: MyColors.whiteColor),
                )
            ),
          ),
          Visibility(
            visible: bgVisibility,
            child: Positioned(
                left: 0,
                right: 0,
                bottom: 80,
                child: Text(
                  'ELECTRIC CHARGING',
                  textAlign: TextAlign.center,
                  style: TextStyle( fontSize: 14),
                )
            ),
          ),
          Visibility(
            visible: bgVisibility,
            child: Positioned(
                left: 0,
                right: 0,
                bottom: 40,
                child: GestureDetector(
                  onTap: _skipButton,
                  child: Text(
                    'SKIP',
                    textAlign: TextAlign.center,
                    style: TextStyle( fontSize: 14, color: MyColors.blueColor),
                  ),
                )
            ),
          ),
          Positioned(
            left: 120,
            right: 120,
            top: 280,
            child: Image.asset(car_top_view, height: 280, width: 150, fit: BoxFit.fill,),
          ),

        ],
      ),
    );
  }
  Container page3(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Visibility(
            visible: true,
            child: Positioned(
              left: 80,
              right: 80,
              top: 80,
              child: Image.asset(abcazLogo, height: 100, width: 100, fit: BoxFit.fill,),
            ),
          ),
          Visibility(
            visible: true,
            child: Positioned(
                left: 0,
                right: 0,
                top: 420,
                child: Text(
                  '03',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 200, color: MyColors.whiteColor),
                )
            ),
          ),
          Visibility(
            visible: true,
            child: Positioned(
                left: 0,
                right: 0,
                bottom: 80,
                child: Text(
                  'YOUR SMART CAR',
                  textAlign: TextAlign.center,
                  style: TextStyle( fontSize: 14),
                )
            ),
          ),
          Visibility(
            visible: true,
            child: Positioned(
                left: 0,
                right: 0,
                bottom: 40,
                child: GestureDetector(
                  onTap:()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen())),
                  child: Text(
                    'NEXT',
                    textAlign: TextAlign.center,
                    style: TextStyle( fontSize: 14, color: MyColors.blueColor),
                  ),
                )
            ),
          ),
          Positioned(
            left: 120,
            right: 120,
            top: 280,
            child: Image.asset(car_top_view, height: 280, width: 150, fit: BoxFit.fill,),
          ),

        ],
      ),
    );
  }
}
