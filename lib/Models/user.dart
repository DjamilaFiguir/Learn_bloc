import 'dart:convert';

class User {
  final String email;
  final String password;
  final String name;
  final String phone;
  final String role;
  final String userPhoto;

  User(
      {this.email,
      this.name,
      this.phone,
      this.role,
      this.userPhoto,
      this.password});

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'name': name,
      'phone': phone,
      'role': role,
      'userPhoto': userPhoto,
    };
  }

  static User fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return User(
      email: map['email'],
      password: map['password'],
      name: map['name'],
      phone: map['phone'],
      role: map['role'],
      userPhoto: map['userPhoto'],
    );
  }

  factory User.mpJson(Map<String, dynamic> json) {
    return User(
      role: json['role'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
    );
  }
  String toJson() => json.encode(toMap());

  static User fromJson(String source) => fromMap(json.decode(source));
}
