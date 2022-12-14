// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
  final String id;
  final String name;
  final String email;
  final String password;
  final String address;
  final String phone;
  final String type;
  final String token;
  final List<dynamic> favs;
  final List<dynamic> myProducts;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.address,
    required this.phone,
    required this.type,
    required this.token,
    required this.favs,
    required this.myProducts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'address': address,
      'phone': phone,
      'type': type,
      'token': token,
      'favs': favs,
      'myProducts': myProducts,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
        id: map['_id'] as String,
        name: map['name'] as String,
        email: map['email'] as String,
        password: map['password'] as String,
        address: map['address'] as String,
        phone: map['phone'] as String,
        type: map['type'] as String,
        token: map['token'] as String,
        favs: List<Map<String, dynamic>>.from(
          map['favs']?.map(
            (x) => Map<String, dynamic>.from(x),
          ),
        ),
        myProducts: List<Map<String, dynamic>>.from(
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
    String? phone,
    String? type,
    String? token,
    List<dynamic>? favs,
    List<dynamic>? myProducts,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      type: type ?? this.type,
      token: token ?? this.token,
      favs: favs ?? this.favs,
      myProducts: myProducts ?? this.myProducts,
    );
  }
}
