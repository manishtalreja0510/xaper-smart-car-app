import 'package:flutter/material.dart';
import 'package:xaper_smart_car_app/constants/colors.dart';
import 'package:xaper_smart_car_app/constants/image_urls.dart';
import 'package:xaper_smart_car_app/pages/connection_pages/connected_established_screen.dart';
class ConnectionStep3 extends StatefulWidget {
  const ConnectionStep3({Key? key}) : super(key: key);

  @override
  _ConnectionStep3State createState() => _ConnectionStep3State();
}

class _ConnectionStep3State extends State<ConnectionStep3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  connectionstep3bg
              )
            )
          ),
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
                            'Connection Established',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 40,),
                          SizedBox(height: 20,),
                        ],
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ConnectionEstablishedScreen()));
                        },
                        child: Container(
                          height: 60,
                          color: MyColors.primaryColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Start Charging', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),),
                              SizedBox(width: 10,),
                              Image.asset(charging_icon, color: MyColors.whiteColor, height: 18, fit: BoxFit.fill,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
