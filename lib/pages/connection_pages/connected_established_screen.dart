import 'package:flutter/material.dart';
import 'package:xaper_smart_car_app/constants/colors.dart';
import 'package:xaper_smart_car_app/constants/image_urls.dart';

class ConnectionEstablishedScreen extends StatefulWidget {
  const ConnectionEstablishedScreen({Key? key}) : super(key: key);

  @override
  _ConnectionEstablishedScreenState createState() =>
      _ConnectionEstablishedScreenState();
}

class _ConnectionEstablishedScreenState
    extends State<ConnectionEstablishedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text('CONNECTED',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                    color: MyColors.greenColor)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
              child: Expanded(
                child: Text(
                  'The connection is succesfully established between your car and with the charger',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                     fontSize: 18
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
            Image.asset(chargin_done_icon),
            SizedBox(height: 50,),
            Image.asset(car_image)
          ],
        ),
      ),
    );
  }
}
