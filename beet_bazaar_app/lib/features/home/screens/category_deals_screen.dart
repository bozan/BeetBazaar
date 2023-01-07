import 'package:beet_bazaar_app/common/widgets/loader.dart';
import 'package:beet_bazaar_app/constants/global_variables.dart';
import 'package:beet_bazaar_app/features/home/services/home_services.dart';
import 'package:beet_bazaar_app/features/product_details/screens/product_details_screen.dart';
import 'package:beet_bazaar_app/features/search/widget/searched_product.dart';
import 'package:beet_bazaar_app/models/product.dart';
import 'package:flutter/material.dart';

class CategoryDealsScreen extends StatefulWidget {
  static const String routeName = '/category-deals';
  final String category;
  const CategoryDealsScreen({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  State<CategoryDealsScreen> createState() => _CategoryDealsScreenState();
}

class _CategoryDealsScreenState extends State<CategoryDealsScreen> {
  List<Product>? productList;
  final HomeServices homeServices = HomeServices();

  @override
  void initState() {
    super.initState();
    fetchCategoryProducts();
  }

  fetchCategoryProducts() async {
    productList = await homeServices.fetchCategoryProducts(
      context: context,
      category: widget.category,
    );
    setState(() {});
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
            title: Text(
              widget.category,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: productList == null
            ? const Loader()
            : Column(
                children: [
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                      itemCount: productList!.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              ProductDetailScreen.routeName,
                              arguments: productList![index],
                            );
                          },
                          child: SearchedProduct(
                            product: productList![index],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ));
  }
}
