import 'package:flutter/material.dart';
import 'package:xaper_smart_car_app/constants/colors.dart';
import 'package:xaper_smart_car_app/constants/image_urls.dart';
import 'package:xaper_smart_car_app/pages/connection_pages/connected_established_screen.dart';

import 'connection_step_1.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  TextEditingController cvvController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.arrow_back)),
                Container(
                  child: Column(
                    children: [
                      // upper card
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                        color: MyColors.whiteColor,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Initial Slot Booking'),
                                Text(
                                    'why this payment?',
                                  style: TextStyle(color: MyColors.blueColor),
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text(
                              '\$10.59',
                                style: TextStyle(color: Color(0xFF022295), fontWeight: FontWeight.w700 , fontSize: 36),
                            ),
                            SizedBox(height: 30,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(emoji_shocking, color: MyColors.greenColor,height: 14, fit: BoxFit.fill,),
                                    SizedBox(width: 8,),
                                    Text(
                                      'AC 3.3kw',
                                      style: TextStyle(color: MyColors.greenColor , fontSize: 14),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(calender_icon,height: 14, fit: BoxFit.fill,),
                                    SizedBox(width: 8,),
                                    Text(
                                      '10 Aug',
                                      style: TextStyle(color: MyColors.blueColor , fontSize: 14),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset(clock_icon,height: 14, fit: BoxFit.fill,),
                                    SizedBox(width: 8,),
                                    Text(
                                      '6:00 PM',
                                      style: TextStyle(color: MyColors.blueColor , fontSize: 14),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        color: MyColors.lightGreyColor,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your saved card',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Image.asset(visa_card, height: 200, width: MediaQuery.of(context).size.width, fit: BoxFit.fill,),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                              decoration: BoxDecoration(
                                  color: MyColors.whiteColor,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Enter CVV number', style: TextStyle( fontSize: 16,),),
                                  Container(
                                    width: 70,
                                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: MyColors.lightBlackColor,),
                                        borderRadius: BorderRadius.circular(4)
                                    ), child: TextField(
                                    controller: cvvController,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration.collapsed(hintText: '***'),
                                  )
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            GestureDetector(
                              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ConnectionStep1())),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                                decoration: BoxDecoration(
                                    color: MyColors.primaryColor,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Text('PROCEED TO PAY', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: MyColors.lightBackgroundColorWhite),),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            GestureDetector(
                              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ConnectionEstablishedScreen())),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                                decoration: BoxDecoration(
                                    color: MyColors.whiteColor,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Add New Cards', style: TextStyle( fontSize: 16, color: MyColors.blueColor),),
                                    Icon(Icons.add),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              'Other payment options',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            GestureDetector(
                              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ConnectionEstablishedScreen())),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                                decoration: BoxDecoration(
                                    color: MyColors.whiteColor,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(upi_logo),
                                    Text('Pay Now', style: TextStyle( fontSize: 16, color: MyColors.blueColor),),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ConnectionEstablishedScreen())),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                                decoration: BoxDecoration(
                                    color: MyColors.whiteColor,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(paytm_logo),
                                    Text('Pay Now', style: TextStyle( fontSize: 16, color: MyColors.blueColor),),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ConnectionEstablishedScreen())),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                                decoration: BoxDecoration(
                                    color: MyColors.whiteColor,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(paypal_logo),
                                    Text('Pay Now', style: TextStyle( fontSize: 16, color: MyColors.blueColor),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
