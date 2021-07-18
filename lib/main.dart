import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_chef/page/home.dart';
import 'package:home_chef/page/login.dart';
import 'package:home_chef/page/signup.dart';
import 'package:home_chef/page/splash.dart';
import 'package:home_chef/page/welcome.dart';
import 'constants/get_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final loginScaffoldKey = GlobalKey<ScaffoldState>();
  final signupScaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Chef',
      theme: getTheme(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/home', page: () => HomeScreen()),
        GetPage(
            name: '/login',
            page: () => LoginScreen(
                  scaffoldKey: loginScaffoldKey,
                )),
        GetPage(
          name: '/Signup',
          page: () => SignUpScreen(scaffoldKey: signupScaffoldKey),
        ),
        GetPage(
          name: '/Welcome',
          page: () => WelcomeScreen(),
        ),
      ],
      home: SplashScreen(),
    );
  }
}
