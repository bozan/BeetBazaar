import 'package:beet_bazaar_app/models/user.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  User user = User(
    id: '',
    name: '',
    email: '',
    password: '',
    address: '',
    phone: '',
    type: '',
    token: '',
    favs: [],
    myProducts: [],
  );

  User get user_ => user;

  void setUser(String user_) {
    user = User.fromJson(user_);
    notifyListeners();
  }

  void setUserFromModel(User user_) {
    user = user_;
    notifyListeners();
  }
}
