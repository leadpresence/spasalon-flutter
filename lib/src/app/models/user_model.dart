import 'package:flutter/foundation.dart';

class UserModel {
  final String id;
  final String fullName;
  final String email;
  final String type;

  UserModel(
      {@required this.id,
      @required this.fullName,
      @required this.email,
      this.type});

  UserModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        fullName = json['fullName'],
        email = json['email'],
        type = json['type'];

  Map<String, dynamic> toJson() {
    return {'id': id, 'fullName': fullName, 'email': email, 'type': type};
  }
}
