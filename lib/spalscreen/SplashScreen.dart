import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports/Widget/AppRoutes.dart';


class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    splashStart();
    super.initState();
  }

  double initialHeight = 50;
  double initialWidth = 0.2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Text(
              "SPORTS",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
          ),
        )
        ),
      );
  }

  splashStart() async {
    await Future.delayed(Duration(milliseconds: 100));
    setState(() {
      // initialHeight = 200;
      initialWidth = 0.85;
    });
    await Future.delayed(Duration(milliseconds: 1100));
    Get.toNamed(AppRoutes.LOGIN);
  }
}
