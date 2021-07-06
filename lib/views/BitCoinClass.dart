import 'package:bitcoin_airtimedatahub/views/SellBitCoinPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../Constant.dart';

class BitCoinClass extends StatelessWidget {
  static String id="bitcoin_screen";
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: mainColor, statusBarIconBrightness: Brightness.light));
    //stop device from rotating
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown,]);
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //bitcoinsvg
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>SellBitCoinPage()));
                  },
                    child: Image.asset('images/btnpic.png'),
                ),
                Text('Sell bitcoin',
                style: TextStyle(
                  fontSize: 15,
                  color: textColor,
                  fontFamily: 'RobotoRegular'

                ),),

                SizedBox(height: 50,),


              ],
            ),
          )),
    );
  }
}
