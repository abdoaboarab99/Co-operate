import 'package:co_operate/components/logInButton.dart';
import 'package:co_operate/modules/getStartedScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class VerificationScreen extends StatefulWidget {
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  int phoneNum = 01096918876;
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Verification',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 35),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Text(
                    'We\'ll send your verification code to $phoneNum,standard SMS , call and data fees may apply ',
                    style: TextStyle(
                      color: Colors.grey.withOpacity(.9),
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                    ),
                    overflow: TextOverflow.fade,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Container(
                    child: PinCodeTextField(
                      controller: _textEditingController,
                      maxLength: 6,
                      pinBoxHeight: 50,
                      pinBoxWidth: 50,
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      pinBoxColor: Colors.white,
                      defaultBorderColor: Color(0xff79C3D4),
                      pinBoxDecoration:
                          ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                      highlight: true,
                      highlightColor: Colors.blueAccent,
                      hasTextBorderColor: Color(0xff79C3D4),
                      pinTextStyle: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Didn\'t receive a code?',
                          style: TextStyle(
                            color: Color(0xff79C3D4),
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      logInButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GetStartedScreen()),
                          );
                        },
                        title: "Verify",
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 27,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
