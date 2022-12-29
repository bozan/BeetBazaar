import 'package:beet_bazaar_app/features/product_details/screens/product_details_screen.dart';
import 'package:beet_bazaar_app/features/search/services/search_services.dart';
import 'package:beet_bazaar_app/models/product.dart';
import 'package:flutter/material.dart';

//create a statelful  widget
class ProductOfDay extends StatefulWidget {
  const ProductOfDay({Key? key}) : super(key: key);

  @override
  State<ProductOfDay> createState() => _ProductOfDayState();
}

class _ProductOfDayState extends State<ProductOfDay> {
  List<Product>? products;
  final SearchServices searchServices = SearchServices();

  @override
  void initState() {
    super.initState();
    fetchAllProducts();
  }

  fetchAllProducts() async {
    products = await searchServices.fetchAllProducts(context);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: const Text(
            'Product of the Day',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              ProductDetailScreen.routeName,
              arguments: products![0],
            );
          },
          child: Builder(
            builder: (BuildContext context) => Image.network(
              products![0].images[0],
              fit: BoxFit.cover,
              height: 200,
            ),
          ),
        ),
      ],
    );
  }
}
