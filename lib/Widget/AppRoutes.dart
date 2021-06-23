import 'package:get/get.dart';
import 'package:sports/auth/login.dart';
import 'package:sports/spalscreen/SplashScreen.dart';
import 'package:sports/auth/SendVerificationCode.dart';
import 'package:sports/auth/OTPField.dart';





class AppRoutes{

  static String INITIAL = "/";
  static String LOGIN = "login";
  static String SENDVETIFICATIONCODE = "SendVerificationCode";
  static String OTPFIELD = "OTPField";


  static List<GetPage> routes = [



    GetPage(page: () => SplashScreen(), name: INITIAL),
    GetPage(page: () => LogIn(), name: LOGIN),
    GetPage(page: () => SendVerificationCode(),name: SENDVETIFICATIONCODE),
    GetPage(page: () => OTPField(), name: OTPFIELD),

  ];
}