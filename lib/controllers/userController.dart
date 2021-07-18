import 'package:get/state_manager.dart';
import 'package:home_chef/models/user.dart';
import 'package:home_chef/services/http_client.dart';

class UserController extends GetxController {
  var users = User().obs;

  Future<dynamic> login(String mobileNumber, String password) async {
    var response = await HttpClient.userLogin(mobileNumber, password);
    users.value = response;
    return response;
  }
}
