import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2312_login_fire/auth/main_page.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset("assets/Galaxy_logo.png"),
      logoWidth: 100,
      backgroundImage: AssetImage("assets/bg.png"),
      showLoader: true,
      navigator: MainPage(),
      durationInSeconds: 2,
    );
  }
}