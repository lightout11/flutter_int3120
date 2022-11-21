import 'package:flutter/material.dart';
import 'package:learnflutter/navigations/custom_nav_bar.dart';
import 'package:learnflutter/screens/home_screens/home_screen.dart';
import '../../../sign_config.dart';
import '../../../widgets/profile/default_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4, //40%
          width: SizeConfig.screenWidth * 1.1,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Back to home",
            press: () {
              Navigator.pushNamed(context, CustomNavBar.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}