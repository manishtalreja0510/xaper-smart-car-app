import 'package:flutter/material.dart';
import 'package:xaper_smart_car_app/constants/colors.dart';
import 'package:xaper_smart_car_app/constants/image_urls.dart';
import 'package:xaper_smart_car_app/pages/my_vehicle_pages/otp_authentication_car_unlock.dart';

class ConnectionStep1 extends StatefulWidget {
  const ConnectionStep1({Key? key}) : super(key: key);

  @override
  _ConnectionStep1State createState() => _ConnectionStep1State();
}

class _ConnectionStep1State extends State<ConnectionStep1> {
  int _connectionsSteps = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: DefaultTabController(
            length: _connectionsSteps,
            // Use a Builder here, otherwise `DefaultTabController.of(context)` below
            // returns null.
            child: Builder(
              builder: (BuildContext context) => Stack(
                children: <Widget>[
                  TabBarView(
                    children: [
                      // step 1
                      step1(context),
                      step2(context),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 90),
                      child: TabPageSelector(color: MyColors.lightOrangeColor,selectedColor: MyColors.primaryColor,),
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

  Container step1(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.arrow_back)),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Step 1',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120, top: 20),
                        child: Image.asset(plug1, height: 450,width: (MediaQuery.of(context).size.width/2)+100, fit: BoxFit.fill,),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          'Connect the charging cable with the connector',
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                      final TabController controller =
                      DefaultTabController.of(context) as TabController;
                      if (!controller.indexIsChanging) {
                        controller.animateTo(_connectionsSteps - 1);
                      }
                    },
                    child: Container(
                      height: 60,
                      color: MyColors.primaryColor,
                      child: Center(child: Text('BOOK YOUR SLOT', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  Container step2(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.arrow_back)),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Step 2',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120, top: 20),
                        child: Image.asset(plug2, height: 300,width: (MediaQuery.of(context).size.width/2)+100, fit: BoxFit.fill,),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          'To validate your connection, enter the OTP here',
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: OtpAuthenticationCarUnlock(bgColor: MyColors.whiteColor, borderColor: MyColors.lightBlackColor, textColor: MyColors.blackColor, navigationFrom: 'connectionStepOTPScreen',),
                      ),
                      SizedBox(height: 20,),
                      Text('Didn\'t get OTP? Resend', style: TextStyle(fontSize: 14, color: MyColors.blueColor),),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                    },
                    child: Container(
                      height: 60,
                      color: MyColors.primaryColor,
                      child: Center(child: Text('ENTER AND CONNECT', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

}
