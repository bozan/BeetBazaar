//Name surname suan static, dynamic olmasi lazim backend kisminda halletmemiz lazim, mail ve phone number da ayni sekilde

import 'dart:ffi';
import 'package:beet_bazaar_app/constants/global_variables.dart';
import 'package:beet_bazaar_app/features/account/widgets/custom_product_button.dart';
import 'package:beet_bazaar_app/features/account/widgets/delete_user_button.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: width,
        child: SingleChildScrollView(
            child: Container(
          width: width,
          margin: EdgeInsets.only(top: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 50.0,
                  left: 15.0,
                ),
                child: Text(
                  "Account information".toUpperCase(),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    height: 1.28,
                  ),
                ),
              ),
              Container(
                width: width,
                margin: EdgeInsets.only(top: 26.0),
                padding: EdgeInsets.only(
                  top: 12.0,
                  left: 15.0,
                  right: 15.0,
                  bottom: 12.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Name Surname",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        height: 1.25,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        "Ahmet Cüneyd Tantuğ",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
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
                padding: EdgeInsets.only(
                  left: 16,
                  top: 12,
                  right: 16,
                  bottom: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "E-MAIL",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        height: 1.25,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text(
                        "tantuğ@itu.edu.tr",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
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
                padding: EdgeInsets.only(
                  left: 16,
                  top: 12,
                  right: 16,
                  bottom: 12,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "PHONE NUMBER",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Gothic A1',
                        fontWeight: FontWeight.w600,
                        height: 1.25,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 4,
                        bottom: 1,
                      ),
                      child: Text(
                        "05XXXXXXXXX",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Gothic A1',
                          fontWeight: FontWeight.w400,
                          height: 1.25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              customProductButton(
                text: 'MY PRODUCTS',
                onTap: () => {
                  print(
                      'products'), //buraya basinca productlara git fonksiyonu gelcek
                },
              ),
              Container(
                padding: EdgeInsets.only(top: height / 4, left: width / 4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    deleteUserButton(
                      text: 'Delete Account',
                      onTap: () => {
                        print('account'),
                      }, //buraya basinca user sil fonksiyonu gelcek
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
