import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:home_chef/widgets/logo.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 4000),
      () {
        Get.offNamed("/home");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/splashscreen2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 600),
            child: SpinKitFadingCircle(
              color: Colors.white,
              size: 70.0,
            ),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 175),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomLogo(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
