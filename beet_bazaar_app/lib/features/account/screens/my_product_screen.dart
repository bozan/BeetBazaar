import 'package:beet_bazaar_app/constants/global_variables.dart';
import 'package:beet_bazaar_app/features/account/services/seller_services.dart';
import 'package:beet_bazaar_app/features/product_details/screens/product_details_screen.dart';
import 'package:beet_bazaar_app/features/search/widget/searched_product.dart';
import 'package:beet_bazaar_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:beet_bazaar_app/common/widgets/bottom_bar.dart';
import '../../../common/widgets/loader.dart';
import '../widgets/single_product.dart';
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
  List<Product>? products = [];
  final SellerServices sellerServices = SellerServices();
  @override
  void initState() {
    super.initState();
    fetchAllProducts();
  }

  fetchAllProducts() async {
    products = await sellerServices.fetchAllProducts(context);
    setState(() {});
  }

  void deleteProduct(Product product, int index) {
    sellerServices.deleteProduct(
      context: context,
      product: product,
      onSuccess: () {
        products!.removeAt(index);
        setState(() {});
      },
    );
  }

  void navigateToAddProductScreen() {
    Navigator.pushNamed(context, AddProductScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return products == null
        ? const Loader()
        : Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: AppBar(
                flexibleSpace: Container(
                  decoration: const BoxDecoration(
                    gradient: GlobalVariables.appBarGradient,
                  ),
                ),
                title: const Text(
                  'My Products',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            body: GridView.builder(
              itemCount: products!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2), // bunu 1 yap!
              itemBuilder: (context, index) {
                final productData = products![index];
                return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        ProductDetailScreen.routeName,
                        arguments: products![index],
                      );
                    },
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          height: 120,
                          child: SingleProduct(
                            image: productData.images[0],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Text(
                                productData.name,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () =>
                                  deleteProduct(productData, index),
                              icon: const Icon(
                                Icons.delete_outline,
                              ),
                            ),
                          ],
                        )
                      ],
                    ));
              },
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: const Color.fromARGB(255, 230, 89, 23),
              onPressed: navigateToAddProductScreen,
              tooltip: 'Add a Product',
              child: const Icon(Icons.add),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
          );
  }
}
