// photo_controller.dart
import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:test/model/photo_model.dart';

class PhotoController extends GetxController {
  var photos = <PhotoModel>[].obs;
  var isLoading = true.obs; // New loading state

  @override
  void onInit() {
    super.onInit();
    fetchPhotos();
  }

  void fetchPhotos() async {
    try {
      isLoading(true);
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        photos.assignAll(
            data.map((photo) => PhotoModel.fromJson(photo)).toList());
      } else {
        throw Exception('Failed to load photos');
      }
    } finally {
      isLoading(false);
    }
  }
}
