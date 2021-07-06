import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title, fontFamily;
  final Color color;
  final double size;
  final FontWeight fontWeight;


  CustomText({@required this.title,@required this.color,@required this.size,@required this.fontWeight, @required this.fontFamily});

  @override
  Widget build(BuildContext context) {
    return Text(title,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontFamily: fontFamily,
          fontWeight:fontWeight
      ),);
  }
}