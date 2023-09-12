import 'package:e_commerce_app/consts/consts.dart';
import 'package:e_commerce_app/widgets_common/appLogo_widget.dart';
import 'package:e_commerce_app/widgets_common/bg_widget.dart';
import 'package:e_commerce_app/widgets_common/custom_textfield.dart';
import 'package:e_commerce_app/widgets_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/widgets_common/bg_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(child: Scaffold(
      body: Center(
        child: Column(
          children: [
            (context.screenHeight*0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Column(
              children: [
                customTextField(email, emailHint),
                customTextField(password, passwordHint),
                Align(
                  alignment: Alignment.centerRight,
                    child:TextButton(onPressed: (){}, child: forgetPass.text.make()),
                ),
                5.heightBox,
                // ourButton().box.width(context.screenWidth-50).make(),
                ourButton((){}, redColor, whiteColor, login).box.width(context.screenWidth-50).make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                ourButton((){}, redColor, whiteColor, login).box.width(context.screenWidth-50).make(),


              ],
            ).box.white.rounded.padding(EdgeInsets.all(16)).width(context.screenWidth-70).make(),
          ],
        ),
      )
    ));
  }
}
