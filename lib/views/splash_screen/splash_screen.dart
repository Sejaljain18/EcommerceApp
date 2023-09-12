import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/views/auth_screen/login_screen.dart';
import 'package:e_commerce_app/widgets_common/appLogo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //creating a method to change screen
  changeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      //using getx
      Get.to(()=>const LoginScreen());

    }

    );
  }

  @override
  void initState(){
    changeScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    //we are using getx so we have to change this material app into getmaterialApp

    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,child:Image.asset(icSplashBg,width: 300,color: Colors.blue)),
              20.heightBox,
            applogoWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            5.heightBox,
            appversion.text.white.make(),
            const Spacer(),
          credits.text.white.fontFamily(semibold).make(),
            30.heightBox,
          ],
        ),
      ),
    );
  }
}
