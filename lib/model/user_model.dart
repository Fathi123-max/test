// user_model.dart
class UserModel {
  int id;
  String name;
  String username;
  String email;

  UserModel(
      {required this.id,
      required this.name,
      required this.username,
      required this.email});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
    );
  }
}
