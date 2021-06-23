import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:get/get.dart';
import 'package:sports/Widget/AppRoutes.dart';

class SendVerificationCode extends StatelessWidget {
  const SendVerificationCode({Key key}) : super(key: key);

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
                      fontFamily: "Roboto-Black"
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                height: 250,
                width: Get.width,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: [
                  Container(
                    height: 53,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          //color: Colors.amber,
                            offset: Offset.zero),
                      ],
                    ),
                    child: CountryCodePicker(
                      initialSelection: '+880',
                      favorite: ['+880'],
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "Roboto-Black",
                      ),
                      dialogBackgroundColor: Colors.transparent,
                    ),
                  ),
                  Container(
                    height: 53,
                    width: 5,
                    color: Colors.transparent,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Mobile Number ",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: "Roboto-Black",
                          fontSize: 14,
                        ),),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: Get.width,
            ),
            InkWell(
              onTap: () {
                Get.toNamed(AppRoutes.OTPFIELD);
              },
              child: Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Send Verification Code",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto-Black"
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
