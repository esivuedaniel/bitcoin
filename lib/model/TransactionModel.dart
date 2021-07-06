import 'package:flutter/cupertino.dart';

class TransactionModel{
 final double btcunit;
 final String btcAmountNaira;
 final String btcDate;
 final String btcStatus;

 TransactionModel({@required this.btcunit,@required this.btcAmountNaira, @required this.btcDate, @required this.btcStatus});
}