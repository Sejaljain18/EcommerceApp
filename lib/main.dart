import 'package:e_commerce_app/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/consts/consts.dart';
import 'package:get/get.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title:'Cozmos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        fontFamily: regular,

      ),
      home: const SplashScreen(),

    );
  }
}
