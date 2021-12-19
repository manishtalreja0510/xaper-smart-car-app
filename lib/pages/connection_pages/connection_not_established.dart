import 'package:flutter/material.dart';
import 'package:xaper_smart_car_app/constants/colors.dart';
import 'package:xaper_smart_car_app/constants/image_urls.dart';

class ConnectionNotEstablishedScreen extends StatefulWidget {
  const ConnectionNotEstablishedScreen({Key? key}) : super(key: key);

  @override
  _ConnectionNotEstablishedScreenState createState() =>
      _ConnectionNotEstablishedScreenState();
}

class _ConnectionNotEstablishedScreenState
    extends State<ConnectionNotEstablishedScreen> {
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
            Text('NOT CONNECTED',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                    color: MyColors.redColor)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
              child: Expanded(
                child: Text(
                  'Due to some technical issue the connection cannot be established',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
            Image.asset(chargin_undone_icon),
            SizedBox(height: 50,),
            Image.asset(car_image)
          ],
        ),
      ),
    );
  }
}
