import 'package:flutter/material.dart';
import 'package:xaper_smart_car_app/pages/connection_pages/connected_established_screen.dart';
import 'package:xaper_smart_car_app/pages/connection_pages/connection_not_established.dart';
import 'package:xaper_smart_car_app/pages/home_screen.dart';
import 'package:xaper_smart_car_app/pages/register_screen.dart';
import 'package:xaper_smart_car_app/pages/register_screen_otp_screen.dart';
import 'package:xaper_smart_car_app/pages/welcome_screen_1.dart';
import 'package:xaper_smart_car_app/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: const Color(0xFFAC8404),
        primarySwatch: Colors.amber,
      ),
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen()
    );
  }
}

