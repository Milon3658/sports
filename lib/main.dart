import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sports/Widget/AppRoutes.dart';
import 'package:sports/theme/theme.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.INITIAL,
      getPages: AppRoutes.routes,
    ) ;
  }
}
