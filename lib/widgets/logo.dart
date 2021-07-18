import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Image(
        image: AssetImage('assets/images/Logo1.png'),
        height: MediaQuery.of(context).size.height / 3.00,
        width: MediaQuery.of(context).size.width / .025,
      ),
    );
  }
}
