import 'dart:convert';
import 'package:beet_bazaar_app/constants/error_handling.dart';
import 'package:beet_bazaar_app/constants/global_variables.dart';
import 'package:beet_bazaar_app/constants/utils.dart';
import 'package:beet_bazaar_app/models/product.dart';
import 'package:beet_bazaar_app/models/user.dart';
import 'package:beet_bazaar_app/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class ProductDetailsServices {
  void addToFavs({
    required BuildContext context,
    required Product product,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    try {
      http.Response res = await http.post(
        Uri.parse('$uri/api/add-to-favs'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': userProvider.user.token,
        },
        body: jsonEncode({
          'id': product.id!,
        }),
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          User user = userProvider.user.copyWith(
            favs: jsonDecode(res.body)['favs'],
          );
          userProvider.setUserFromModel(user);
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  Future<List<String>> findOwner({
    required BuildContext context,
    required Product product,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    User user = userProvider.user;
    List<String> owner = [user.name, user.phone];
    try {
      http.Response res = await http.get(
        Uri.parse('$uri/api/find-owner/${product.id}'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': userProvider.user.token,
        },
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          for (int i = 0; i < jsonDecode(res.body).length; i++) {
            owner[i] = jsonEncode(jsonDecode(res.body)[i]);
          }
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
    return owner;
  }

// void rateProduct({
//   required BuildContext context,
//   required Product product,
//   required double rating,
// }) async {
//   final userProvider = Provider.of<UserProvider>(context, listen: false);

//   try {
//     http.Response res = await http.post(
//       Uri.parse('$uri/api/rate-product'),
//       headers: {
//         'Content-Type': 'application/json; charset=UTF-8',
//         'x-auth-token': userProvider.user.token,
//       },
//       body: jsonEncode({
//         'id': product.id!,
//         'rating': rating,
//       }),
//     );

//     httpErrorHandle(
//       response: res,
//       context: context,
//       onSuccess: () {},
//     );
//   } catch (e) {
//     showSnackBar(context, e.toString());
//   }
// }
}
