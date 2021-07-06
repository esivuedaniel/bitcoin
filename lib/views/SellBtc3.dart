import 'package:bitcoin_airtimedatahub/customWidgets/CustomText.dart';
import 'package:bitcoin_airtimedatahub/views/TransactionHistory.dart';
import 'package:flutter/material.dart';

import '../Constant.dart';

class SellBtc3 extends StatelessWidget {
  final String myrenamedImage;

  SellBtc3({@required this.myrenamedImage});

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: mainColor,
            elevation: 0,
            leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,
                color: white,),
            ),
            title:Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Text('Sell Bitcoin',
                  style: kTextStyle.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 4,),
                Text('(BTC)',
                  style: kTextStyle.copyWith(fontSize: 10, fontWeight: FontWeight.w400),
                ),
              ],
            ) ,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    color: Colors.white,
                    elevation: 2,
                    child: Column(
                      children: [
                        SizedBox(height: 50,),
                        Center(child: CustomText(title: 'Screenshot Uploaded Successfully', color: Color(0xff343A40), size: 16, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular', )),
                        SizedBox(height: 40,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [

                              Icon(Icons.image,
                                size: 14,
                                color: Color(0xffCFCFCF),),
                              SizedBox(width: 5,),
                              CustomText(title: myrenamedImage, color: Color(0xffCFCFCF), size: 13, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular', ),
                              Spacer(),
                              CustomText(title: 'Uploaded', color: Color(0xff21BF73), size: 13, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular', ),
                              SizedBox(width: 13,),
                              Icon(Icons.done,
                                size: 10.3,
                                color: Color(0xff21BF73) ,),
                            ],
                          ),
                        ),
                        SizedBox(height: 35,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: CustomText(title: '* Kindly allow confirmation of your Bitcoin for your\n   wallet to be credited ', color: Color(0xff6C757D), size: 13, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular', ),
                        ),
                        SizedBox(height: 50,),
                      ],
                    ),
                  ),
                  SizedBox(height: 35,),

                  Card(
                    color: Colors.white,
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 19,),
                          CustomText(title: 'Sell Details', color: Color(0xff222222), size: 16, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular', ),
                          SizedBox(height: 35,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Image.asset('images/btnbig.png'),
                              SizedBox(width: 6,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(title: 'Bitcoin / USD', color: Color(0xff222222), size: 11, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular',),
                                  SizedBox(height: 6,),
                                  CustomText(title: 'Sold: 0.0018 BTC', color: Color(0xff6C757D), size: 11, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular',),
                                  SizedBox(height: 8,),
                                  CustomText(title: 'Amount to Recieve: 30,000 ', color: Color(0xff6C757D), size: 11, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular',),
                                ],
                              ),
                              Spacer(),

                              Column(
                                children: [
                                  CustomText(title: '27 May, 09:28 AM', color: Color(0xff6C757D), size: 11, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular',),
                                  SizedBox(height: 5,),
                                  CustomText(title: 'Confirmation Pending', color: Color(0xffD90429), size: 11, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular',),

                                ],
                              ),


                            ],
                          ),
                          SizedBox(height: 50,),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 50,),
                  Center(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>TransactionHistory()));
                      },
                      child: Text('Click me',
                        style: TextStyle(
                            fontSize: 20,
                            color: textColor,
                            fontFamily: 'RobotoRegular'

                        ),),
                    ),
                  )





                ],
              ),
            ),
          )),
    );
  }
}
