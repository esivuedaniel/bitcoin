
import 'dart:io';

import 'package:bitcoin_airtimedatahub/Constant.dart';
import 'package:bitcoin_airtimedatahub/customWidgets/BoldButton.dart';
import 'package:bitcoin_airtimedatahub/customWidgets/CustomText.dart';
import 'package:bitcoin_airtimedatahub/views/SellBtc3.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;


class SellBtc2 extends StatefulWidget {
  @override
  _SellBtc2State createState() => _SellBtc2State();
}

class _SellBtc2State extends State<SellBtc2> {
  String btcAddress='34HuwzDnSwxVRNCoyFCpQnRBXV2sVVmGhI0Pks09O';
  File _image;
  String myrenamedImage;

  _imgFromGallery() async {
    File image = await  ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50
    );

    setState(() {
      _image = image;
      myrenamedImage= _image.path.split('/').last.replaceAll('scaled_image_picker', 'img');
    });
  }

  void MyToast(String msg){
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: mainColor,
        textColor: Colors.white,
        fontSize: 16.0);
  }

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
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Center(child: Image.asset('images/btnpic.png')),
                  SizedBox(height: 13,),
                  Center(child: CustomText(title: 'Our Bitcoin Address', color: Color(0xff343A40), size: 17, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular', )),
                  SizedBox(height: 18,),
                  Center(child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: white,
                      border: Border.all(
                        width: 1,
                        color: Color(0xffDFE2E4)
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(4))
                    ),
                      child: CustomText(title: btcAddress, color: Color(0xff212529), size: 12.5, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular', ))),
                  SizedBox(height:25),
                  //on tap to copy link
                  GestureDetector(
                    onTap: (){
                      ClipboardData data = ClipboardData(text: btcAddress);
                       Clipboard.setData(data);
                       MyToast( 'Address Copied');

                      // Clipboard.setData(new ClipboardData(text: _copy));
                    },
                    child: Center(child: Container(
                      width: 119,
                        height: 38,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color(0x3D7A1300),
                            border: Border.all(
                                width: 1,
                                color: Color(0xff7A1300)
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(4))
                        ),
                        child: Align(
                          alignment: Alignment.center,
                            child: CustomText(title: 'Copy Address', color: Color(0xff7A1300), size: 14, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular', )))),
                  ),
                  SizedBox(height: 59,),
                  CustomText(title: 'Upload screenshot of sent BTC*', color: Color(0xff6C757D), size: 14, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular', ),
                  SizedBox(height: 18,),
                  GestureDetector(
                    onTap: (){
                      _imgFromGallery();
                     // Navigator.of(context).pop();
                    },
                    child: Center(child: DottedBorder(
                      color: Color(0xff8C8D9E),
                      strokeWidth: 1,
                      child: Container(
                        width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                              color: white,
                          ),
                          child: _image == null ?Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.drive_folder_upload,
                              color: Color(0xff6C757D),),
                              SizedBox(width: 10,),
                              CustomText(title: 'Upload file here', color: Color(0xff6C757D), size: 13, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular', ),
                            ],
                          ): Row(
                            children: [
                              SizedBox(width: 10,),
                              Icon(Icons.image,
                                size: 13.28,
                                color: Color(0xff6C757D),),
                              SizedBox(width: 5,),
                              CustomText(title: '$myrenamedImage', color: Color(0xff6C757D), size: 13, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular', ),
                              Spacer(),
                              GestureDetector(
                                onTap: (){
                                  // _image = null;
                                 _image.delete(recursive: true);
                                },
                                child: Icon(Icons.clear,
                                size: 13.28,
                                color: Color(0xff6C757D),),
                              ),
                              SizedBox(width: 10,)
                            ],
                          )  ),
                    )),
                  ),
                  SizedBox(height: 45),
                  Row(
                    children: [
                      Expanded(child: Divider(height: 10, thickness: 1, color: Color(0xffDFE2E4),)),
                      SizedBox(width: 20,),
                      Expanded(child: Divider(height: 10, thickness: 1, color: Color(0xffDFE2E4),)),
                    ],
                  ),
                  SizedBox(height: 20),
                  CustomText(title: '* Copy our BTC wallet address above to send BTC', color: Color(0xff6C757D), size: 14, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular', ),
                  SizedBox(height: 16),
                  CustomText(title: '* Kindly allow confirmation of your Bitcoin for your\n   wallet to be credited ', color: Color(0xff6C757D), size: 14, fontWeight: FontWeight.w400, fontFamily: 'RobotoRegular', ),
                  SizedBox(height: 70),
                  BoldButton(text: 'DONE', pressMe: (){
                    if(_image==null){
                      MyToast( 'Upload screenshot');
                    }else{
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) =>SellBtc3(myrenamedImage: myrenamedImage,)));}
                   //  print('Daniel $_image');
                   //  print('Daniel2 ${_image.toString()}');
                   //  print('Daniel3 ${_image.path.split('/').last}');
                   //  print('Daniel4 ${_image.path.split('/').last.replaceAll('scaled_image_picker', 'img')}');
                   //
                   //  print('Original path: ${_image.path}');
                   //  String dir = path.dirname(_image.path);
                   //  String newPath = path.join(dir, 'case01wd03id01.jpg');
                   //  print('NewPath: ${newPath}');
                   //  print('meeeee: ${ _image.renameSync(newPath)}');

                  },),
                  SizedBox(height: 50),






                ],
              ),
            ),
          )),
    );
  }
}
