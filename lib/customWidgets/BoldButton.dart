
import 'package:flutter/material.dart';

import '../Constant.dart';
class BoldButton extends StatelessWidget {

  final String text;
  Function pressMe;
  BoldButton({ @required this.text, @required this.pressMe});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressMe,
      child: Container(
         width: double.infinity,
         height:48,
        decoration: BoxDecoration(
          // color: Color(0xffFF6E5D),
            color: mainColor,
            borderRadius: BorderRadius.all(Radius.circular(5))
        ),
        child: Center(
          child: Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xffF8F9FA),
                fontSize: 14,
                fontFamily:'RobotoRegular',
                fontWeight: FontWeight.w400
            ),
          ),
        ),
      ),
    );
  }
}