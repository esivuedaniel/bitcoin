import 'package:bitcoin_airtimedatahub/customWidgets/CustomText.dart';
import 'package:bitcoin_airtimedatahub/model/TransactionModel.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../Constant.dart';

class TransactionHistory extends StatelessWidget {

  List<TransactionModel> transList=[
    TransactionModel(btcunit: 0.0018, btcAmountNaira: '30,000', btcDate: '27 May, 09:28 AM', btcStatus: 'Confirmation Pending'),
    TransactionModel(btcunit: 0.0020, btcAmountNaira: '35,000', btcDate: '13 March 2021, 10:28 PM', btcStatus: 'Confirmation Successful'),
    TransactionModel(btcunit: 0.00129, btcAmountNaira: '150,000', btcDate: '07 March,2021 09:28 AM', btcStatus: 'Failed'),
  ];

  @override
  Widget build(BuildContext context) {


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
            title:Text('Transaction History',
              style: kTextStyle.copyWith(fontWeight: FontWeight.bold),
            ) ,
          ),
          body: ListView.separated(
              itemCount: transList.length,
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemBuilder: (BuildContext context, int index){
                return Container(
                  // width: double.infinity,
                  //  height: 152,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Image.asset('images/btnbig.png'),
                        SizedBox(width: 5,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(title: 'Bitcoin / USD', color: Color(0xff222222), size: 13, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular',),
                            SizedBox(height: 6,),
                            CustomText(title: 'Sold: ${transList[index].btcunit} BTC', color: Color(0xff6C757D), size: 11, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular',),
                            SizedBox(height: 8,),
                            CustomText(title: 'Amount to Recieve: ₦${transList[index].btcAmountNaira} ', color: Color(0xff6C757D), size: 11, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular',),
                          ],
                        ),
                        Spacer(),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomText(title: '${transList[index].btcDate} ', color: Color(0xff6C757D), size: 11, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular',),
                            SizedBox(height: 5,),
                            CustomText(title: '${transList[index].btcStatus} ', color: transList[index].btcStatus=='Confirmation Successful'?  Color(0xff21BF73): Color(0xffD90429), size: 11, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular',),

                          ],
                        ),

                      ],
                    ),
                  ),
                );
              })
      ),
    );
  }
}
