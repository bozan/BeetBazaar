import 'package:beet_bazaar_app/constants/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:beet_bazaar_app/common/widgets/bottom_bar.dart';
import 'add_product_screen.dart';

//create a stateful  widget

class MyProductScreen extends StatefulWidget {
  static const String routeName = '/my-product';
  const MyProductScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyProductScreenState createState() => _MyProductScreenState();
}

class _MyProductScreenState extends State<MyProductScreen> {

  void navigateToAddProductScreen() {
    Navigator.pushNamed(context, AddProductScreen.routeName);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: const Text(
            'My Product',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: const Center(
        child: Text('My Product'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 230, 89, 23),
        onPressed: navigateToAddProductScreen,
        tooltip: 'Add a Product',
        ),
        floatingActionButtonLocation: 
            FloatingActionButtonLocation.centerFloat,
    ); 
  }
}