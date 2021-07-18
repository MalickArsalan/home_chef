import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_chef/widgets/button.dart';
import 'package:home_chef/widgets/logo.dart';

class HomeScreen extends StatelessWidget {
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
                      "Order Hygienic Homemade Food",
                      style: Theme.of(context).textTheme.headline3,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CommonButton(
                          onPressed: () {
                            Get.toNamed('/Signup');
                          },
                          text: 'Register',
                          highlighColor: true,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CommonButton(
                          onPressed: () {
                            Get.toNamed('/login');
                          },
                          text: 'Log In',
                        ),
                      ],
                    )
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
