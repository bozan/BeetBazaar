//Name surname suan static, dynamic olmasi lazim backend kisminda halletmemiz lazim, mail ve phone number da ayni sekilde

import 'package:beet_bazaar_app/features/account/screens/my_product_screen.dart';
import 'package:beet_bazaar_app/features/account/widgets/custom_product_button.dart';
import 'package:beet_bazaar_app/features/account/widgets/bottom_buttons.dart';
import 'package:beet_bazaar_app/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccountScreen extends StatefulWidget {
  static const String routeName = '/account';
  const AccountScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  void navigateToMyProductScreen() {
    Navigator.pushNamed(context, MyProductScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;

    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: width,
        child: SingleChildScrollView(
            child: Container(
          width: width,
          margin: const EdgeInsets.only(top: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  left: 15.0,
                ),
                child: Text(
                  "Account information".toUpperCase(),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 1.28,
                  ),
                ),
              ),
              Container(
                width: width,
                margin: const EdgeInsets.only(top: 26.0),
                padding: const EdgeInsets.only(
                  top: 12.0,
                  left: 15.0,
                  right: 15.0,
                  bottom: 12.0,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Name Surname",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1.25,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        user.name,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          height: 1.25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: width,
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 12,
                  right: 16,
                  bottom: 12,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "E-MAIL",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1.25,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text(
                        user.email,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          height: 1.25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: width,
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 12,
                  right: 16,
                  bottom: 12,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "PHONE NUMBER",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1.25,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 4,
                        bottom: 1,
                      ),
                      child: Text(
                        user.phone,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          height: 1.25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: width,
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 12,
                  right: 16,
                  bottom: 12,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Address",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1.25,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text(
                        user.address,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          height: 1.25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomProductButton(
                text: 'MY PRODUCTS',
                onTap: navigateToMyProductScreen,
              ),
              const BottomButtons(),
            ],
          ),
        )),
      ),
    );
  }
}
