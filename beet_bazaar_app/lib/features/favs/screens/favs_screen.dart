// ignore_for_file: unnecessary_const

import 'package:beet_bazaar_app/common/widgets/custom_button.dart';
import 'package:beet_bazaar_app/constants/global_variables.dart';
import 'package:beet_bazaar_app/features/favs/widgets/favs_product.dart';
import 'package:beet_bazaar_app/features/favs/widgets/favs_subtotal.dart';
import 'package:beet_bazaar_app/features/search/screens/search_screen.dart';
import 'package:beet_bazaar_app/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavsScreen extends StatefulWidget {
  const FavsScreen({Key? key}) : super(key: key);

  @override
  State<FavsScreen> createState() => _FavsScreenState();
}

class _FavsScreenState extends State<FavsScreen> {
  void navigateToSearchScreen(String query) {
    Navigator.pushNamed(context, SearchScreen.routeName, arguments: query);
  }

  @override
  Widget build(BuildContext context) {
    final user = context.watch<UserProvider>().user;
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: GlobalVariables.appBarGradient,
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 42,
                    margin: const EdgeInsets.only(left: 15),
                    child: Material(
                      borderRadius: BorderRadius.circular(7),
                      elevation: 1,
                      child: TextFormField(
                        onFieldSubmitted: navigateToSearchScreen,
                        decoration: const InputDecoration(
                          prefixIcon: InkWell(
                            //onTap: () => _search(),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 6),
                              child: Icon(
                                Icons.search,
                                color: Colors.black,
                                size: 23,
                              ),
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.only(top: 10),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            borderSide: BorderSide(
                              color: Colors.black38,
                              width: 1,
                            ),
                          ),
                          hintText: "Search",
                          hintStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  height: 42,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: const Icon(
                    Icons.mic,
                    color: Colors.black,
                    size: 23,
                  ),
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const FavsSubtotal(),
              // disabled this part because it was not going to be used
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: CustomButton(
              //     text: 'You have ${user.favs.length} favorites',
              //     onTap: () {},
              //     color: Colors.yellow[600],
              //   ),
              // ),
              // const SizedBox(
              //   height: 15,
              // ),
              Container(
                color: Colors.black12.withOpacity(0.08),
                height: 1,
              ),
              const SizedBox(
                height: 5,
              ),
              ListView.builder(
                  itemCount: user.favs.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return FavsProduct(index: index);
                  }),
              Container(
                color: Colors.black12.withOpacity(0.08),
                height: 1,
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'You have ${user.favs.length} favorites',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
