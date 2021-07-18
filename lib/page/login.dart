import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_chef/controllers/userController.dart';
import 'package:home_chef/widgets/create_account.dart';

import '../widgets/button.dart';
import '../widgets/login_inputs.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    required this.scaffoldKey,
  });

  final scaffoldKey;
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final _mobileNumberFieldController = TextEditingController();
  final _passwordFieldController = TextEditingController();
  final UserController userController = Get.put(UserController());

  @override
  void initState() {
    super.initState();
    _mobileNumberFieldController.text = '';
    _passwordFieldController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: widget.scaffoldKey,
      appBar: AppBar(
        title: Text("Login"),
        actions: [
          Image.asset(
            "assets/images/Logo1.png",
            semanticLabel: 'logo',
            fit: BoxFit.fitWidth,
            color: Colors.brown,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 32,
              right: 32,
              top: 80,
            ),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    "assets/images/Logo1.png",
                    height: MediaQuery.of(context).size.height / 3.00,
                    width: MediaQuery.of(context).size.width / .025,
                    color: Color(0xFFA26E47),
                    // height: 0,
                  ),
                  LoginInputs(
                    mobilenumberFieldController: _mobileNumberFieldController,
                    passwordFieldController: _passwordFieldController,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  CommonButton(
                    onPressed: _onSubmitLoginButton,
                    text: 'login',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  CreateAccount()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool _isFormValidated() {
    final FormState form = formKey.currentState!;
    return form.validate();
  }

  _onSubmitLoginButton() async {
    if (_isFormValidated()) {
      var response = await userController.login(
          _mobileNumberFieldController.text, _passwordFieldController.text);

      if (response.message != "" && response.message != null) {
        final snackBar = SnackBar(
          backgroundColor: Colors.red,
          content: Text(response.message),
        );
        widget.scaffoldKey.currentState.showSnackBar(snackBar);
      } else {
        Get.toNamed("/Welcome");
      }
    } else {
      final snackBar = SnackBar(
        backgroundColor: Colors.red,
        content: Text('Your mobile number / password is incorrect'),
      );
      widget.scaffoldKey.currentState.showSnackBar(snackBar);
    }
  }
}
