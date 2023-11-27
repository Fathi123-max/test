import 'package:get/get.dart';
import 'package:test/controller/photos_controller.dart';
import 'package:test/controller/user_controllers.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<UserController>(UserController());
    Get.put<PhotoController>(PhotoController());
  }
}
