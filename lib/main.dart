// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
//import 'package:flutter_application_2312_login_fire/pages/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_2312_login_fire/auth/main_page.dart';
import 'package:flutter_application_2312_login_fire/pages/Splashscreen.dart';
import 'package:flutter_application_2312_login_fire/pages/phone.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
      //home: MyPhone(),
    );
  }
}
