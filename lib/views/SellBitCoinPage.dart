import 'package:bitcoin_airtimedatahub/Constant.dart';
import 'package:bitcoin_airtimedatahub/customWidgets/BoldButton.dart';
import 'package:bitcoin_airtimedatahub/customWidgets/CustomText.dart';
import 'package:bitcoin_airtimedatahub/views/SellBtc2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellBitCoinPage extends StatefulWidget {
  @override
  _SellBitCoinPageState createState() => _SellBitCoinPageState();
}

class _SellBitCoinPageState extends State<SellBitCoinPage> {
  String amountentered;
  double amountUSD=0.00;
  double amountNGN=0.00;

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
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
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8,),
                  CustomText(title: 'BTC Real Time Rate', color: Color(0xff6C757D), size: 10, fontWeight: FontWeight.w400),
                  SizedBox(height: height*0.015,),
                  Card(
                    color: Colors.white,
                    elevation: 1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                      child: Row(
                        children: [

                          Image.asset('images/btnpic.png'),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(title: 'Bitcoin / USD', color: Color(0xff222222), size: 12, fontWeight: FontWeight.w400, fontFamily: 'Poppins',),
                              SizedBox(height: 4,),
                              CustomText(title: '\$33,362.00', color: Color(0xff222222), size: 12, fontWeight: FontWeight.w700, fontFamily: 'RobotoRegular',),

                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: CustomText(title: 'Rate: 501 NGN /\$ ', color: Color(0xff21BF73), size: 10, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular',),
                          ),


                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.04,),
                  Center(child: CustomText(title: 'Enter BTC Amount To Sell ', color: Color(0xff6C757D), size: 10, fontWeight: FontWeight.w400, fontFamily: 'Poppins',)),
                  SizedBox(height: height*0.03,),
                  Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex:1,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.done,
                            textAlign: TextAlign.end,
                            style:TextStyle(
                                fontSize: 48,
                                color: Color(0xff212529),
                                fontFamily: 'RobotoRegular'
                            ) ,
                            onChanged: (value) {
                              setState(() {
                                amountentered=value;
                                amountUSD=((double.parse(amountentered))*33500);
                                amountNGN=((double.parse(amountentered))*13783910);
                              });

                            },
                            decoration:InputDecoration(
                              hintText: '0.00',

                               border: InputBorder.none,
                                hintStyle: TextStyle(
                                fontSize: 48,
                                color: Color(0xff212529),
                                fontFamily: 'RobotoRegular'
                              )
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(top:15.0),
                              child: CustomText(title: 'BTC', color: Color(0xff6C757D), size: 20, fontWeight: FontWeight.w500, fontFamily: 'RobotoRegular', ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: height*0.028,),
                  Center(child: CustomText(title: 'Sell Amount In USD: ${amountUSD.toStringAsFixed(2)}', color:greenColor, size: 12, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular',)),
                  SizedBox(height: height*0.01,),
                  Center(child: CustomText(title: 'Min Amount To Sell \$50', color:Color(0xff6C757D), size: 10, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular',)),
                  SizedBox(height: height*0.04,),
                  Center(child: CustomText(title: 'Amount to Receive:  ${amountNGN.toStringAsFixed(2)} NGN', color:Color(0xff222222), size: 12, fontWeight: FontWeight.w700, fontFamily: 'RobotoRegular',)),

                  SizedBox(height: 83,),
                  BoldButton(text: 'Proceed to sell', pressMe: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>SellBtc2()));
                  },),
                  SizedBox(height: 70),





                ],
              ),
            ),
          )
      ),
    );
  }
}


