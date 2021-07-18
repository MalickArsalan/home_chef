import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_chef/controllers/userController.dart';
import 'package:home_chef/widgets/logo.dart';

class WelcomeScreen extends StatelessWidget {
  final UserController userController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/splashscreen2.jpg"),
                  fit: BoxFit.cover,
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 8,
                    ),
                    Text(
                      "Warm-Hearted Welcome to ${userController.users.value.name}",
                      style: Theme.of(context).textTheme.headline3,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
