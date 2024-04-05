import 'dart:async';
import 'package:flutter/material.dart';

import 'package:splash_screen_view/SplashScreenView.dart';

//import 'package:semasa/page/home.dart';

import 'package:tmdgroupid/page/home.dart';
//import 'package:adekuakur/main.dart';

class LoadingPage extends StatefulWidget {
  @override
  LoadingScreen createState() => LoadingScreen();
}

@override
class LoadingScreen extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: HomePageCompro(), //HomePagePoker(), //MainScanPage(),
      duration: 3000,
      imageSize: 150,
      imageSrc: "asset/logo_company.jpeg",
      text: 'Company Profile TMD Group ID',
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontFamily: 'Lato',
        fontSize: 12.0,
      ),
      colors: [
        Colors.blue,
        Colors.white,
        Colors.blue,
      ],
      backgroundColor: Colors.white,
    );
  }
}
