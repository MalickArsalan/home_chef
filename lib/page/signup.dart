import 'package:flutter/material.dart';
import 'package:home_chef/widgets/signup_inputs.dart';

import '../widgets/button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({required this.scaffoldKey});
  final scaffoldKey;

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  final _nameFieldController = TextEditingController();
  final _mobileNumberFieldController = TextEditingController();
  final _passwordFieldController = TextEditingController();
  final _emailFieldController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameFieldController.text = '';
    _mobileNumberFieldController.text = '';
    _passwordFieldController.text = '';
    _emailFieldController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: widget.scaffoldKey,
      appBar: AppBar(
        title: Text("SignUp"),
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
              top: 125,
            ),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SignUpInputs(
                    nameFieldController: _nameFieldController,
                    mobileNumberFieldController: _mobileNumberFieldController,
                    passwordFieldController: _passwordFieldController,
                    emailFieldController: _emailFieldController,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  CommonButton(
                    onPressed: _onSubmitLoginButton,
                    text: 'Register',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 20,
                  ),
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
    } else {
      final snackBar = SnackBar(
        backgroundColor: Colors.red,
        content: Text(''),
      );
      //widget.scaffoldKey.currentState.showSnackBar(snackBar);
      return;
    }
  }
}
