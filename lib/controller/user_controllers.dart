// user_controller.dart
import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:test/model/user_model.dart';

class UserController extends GetxController {
  var users = <UserModel>[].obs;
  var isLoading = true.obs; // New loading state

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  void fetchUsers() async {
    try {
      isLoading(true);
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        users.assignAll(data.map((user) => UserModel.fromJson(user)).toList());
      } else {
        throw Exception('Failed to load users');
      }
    } finally {
      isLoading(false);
    }
  }
}
