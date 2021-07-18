import 'package:flutter/material.dart';
import 'package:home_chef/constants/const.dart';
import 'package:home_chef/helpers/validators.dart';

class LoginInputs extends StatelessWidget {
  const LoginInputs({
    Key? key,
    this.mobilenumberFieldController,
    this.passwordFieldController,
  }) : super(key: key);

  final mobilenumberFieldController;
  final passwordFieldController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
          key: Key('mobile'),
          controller: mobilenumberFieldController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: 'Mobile Number',
            hintText: '03002727170',
            labelStyle: TextStyle(color: darkBrown),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey.shade400,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: darkBrown),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: darkBrown),
            ),
          ),
          cursorColor: darkBrown,
          validator: Validators.validateMobileNumber,
        ),
        SizedBox(height: 30),
        TextFormField(
          key: Key('password'),
          controller: passwordFieldController,
          autocorrect: false,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'securepassword',
            labelText: 'Password',
            labelStyle: TextStyle(color: darkBrown),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: darkBrown),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: darkBrown),
            ),
          ),
          cursorColor: darkBrown,
          validator: Validators.validatePassword,
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
