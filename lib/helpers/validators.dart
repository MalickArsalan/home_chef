class Validators {
  static String? validateMobileNumber(String? value) {
    Pattern pattern = r'[0-9]';
    RegExp regex = new RegExp(pattern.toString());
    if (!(value!.length >= 10 && value.length < 12)) {
      return 'Mobile Number must be of 10 or 11 digit';
    } else if (value.isEmpty) {
      return 'Mobile Number must be of 10 or 11 digit';
    } else if (!regex.hasMatch(value)) {
      return 'Enter Valid Mobile Number';
    } else {
      return null;
    }
  }

  static String? validatePassword(String? value) {
    return value!.isEmpty ? 'Password can\'t be empty' : null;
  }

  static String? validateEmail(String? value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value!))
      return 'Enter Valid Email';
    else
      return null;
  }

  static String? validateName(String? value) {
    Pattern pattern = r'[a-zA-Z]';
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value!))
      return 'Enter Valid Name';
    else
      return null;
  }
}
