import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';


class OTPField extends StatefulWidget {
  const OTPField({Key key}) : super(key: key);

  @override
  _OTPFieldState createState() => _OTPFieldState();
}




class _OTPFieldState extends State<OTPField> {


  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.amber),
      borderRadius: BorderRadius.circular(10.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "SPORTS",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                      fontFamily: "Roboto-Black"),
                ),
              ],
            ),
            Container(
              height: 180,
              width: Get.width,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: PinPut(


                fieldsCount: 4,
                eachFieldHeight: 53,
                onSubmit: (String pin) {},
                focusNode: _pinPutFocusNode,
                controller: _pinPutController,
                submittedFieldDecoration: _pinPutDecoration.copyWith(
                  borderRadius: BorderRadius.circular(10.0),),
                selectedFieldDecoration: _pinPutDecoration,
                followingFieldDecoration: _pinPutDecoration.copyWith(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
