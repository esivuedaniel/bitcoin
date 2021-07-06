import 'package:bitcoin_airtimedatahub/views/BitCoinClass.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Airtime Data Hub',
      initialRoute: BitCoinClass.id,
      routes: {
        BitCoinClass.id:(context) =>BitCoinClass(),
      },
    );
  }
}

