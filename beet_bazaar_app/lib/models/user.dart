// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
  final String id;
  final String name;
  final String email;
  final String password;
  final String address;
  final String type;
  final String token;
  final List<dynamic> favs;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.address,
    required this.type,
    required this.token,
    required this.favs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'address': address,
      'type': type,
      'token': token,
      'favs': favs,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
        id: map['_id'] as String,
        name: map['name'] as String,
        email: map['email'] as String,
        password: map['password'] as String,
        address: map['address'] as String,
        type: map['type'] as String,
        token: map['token'] as String,
        favs: List<Map<String, dynamic>>.from(
          map['favs']?.map(
            (x) => Map<String, dynamic>.from(x),
          ),
        ));
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  User copyWith({
    String? id,
    String? name,
    String? email,
    String? password,
    String? address,
    String? type,
    String? token,
    List<dynamic>? favs,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      address: address ?? this.address,
      type: type ?? this.type,
      token: token ?? this.token,
      favs: favs ?? this.favs,
    );
  }
}
