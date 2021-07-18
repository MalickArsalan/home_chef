import 'package:flutter/material.dart';
import 'package:home_chef/constants/const.dart';
import 'package:home_chef/helpers/validators.dart';

class SignUpInputs extends StatelessWidget {
  const SignUpInputs({
    Key? key,
    this.nameFieldController,
    this.mobileNumberFieldController,
    this.passwordFieldController,
    this.emailFieldController,
  }) : super(key: key);

  final nameFieldController;
  final mobileNumberFieldController;
  final passwordFieldController;
  final emailFieldController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
          key: Key('name'),
          controller: mobileNumberFieldController,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            labelText: 'Name',
            hintText: 'Chef Name',
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
          validator: Validators.validateName,
        ),
        SizedBox(height: 30),
        TextFormField(
          key: Key('mobile'),
          controller: mobileNumberFieldController,
          keyboardType: TextInputType.phone,
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
        SizedBox(height: 30),
        TextFormField(
          key: Key('email'),
          controller: emailFieldController,
          autocorrect: false,
          obscureText: false,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'testchef@homechef.com',
            labelText: 'Email',
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
          validator: Validators.validateEmail,
        ),
      ],
    );
  }
}
