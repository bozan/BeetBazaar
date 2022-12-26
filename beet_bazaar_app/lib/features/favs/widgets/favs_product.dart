import 'package:beet_bazaar_app/features/favs/services/favs_services.dart';
import 'package:beet_bazaar_app/features/product_details/screens/product_details_screen.dart';
import 'package:beet_bazaar_app/features/product_details/services/product_details_services.dart';
import 'package:beet_bazaar_app/models/product.dart';
import 'package:beet_bazaar_app/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavsProduct extends StatefulWidget {
  final int index;
  const FavsProduct({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<FavsProduct> createState() => _FavsProductState();
}

class _FavsProductState extends State<FavsProduct> {
  final ProductDetailsServices productDetailsServices =
      ProductDetailsServices();
  final FavsServices favsServices = FavsServices();

  void increaseQuantity(Product product) {
    productDetailsServices.addToFavs(
      context: context,
      product: product,
    );
  }

  void decreaseQuantity(Product product) {
    favsServices.removeFromFavs(
      context: context,
      product: product,
    );
  }

  @override
  Widget build(BuildContext context) {
    final productFavs = context.watch<UserProvider>().user.favs[widget.index];
    final product = Product.fromMap(productFavs['product']);
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          ProductDetailScreen.routeName,
          arguments: product,
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Row(
          children: [
            Image.network(
              product.images[0],
              fit: BoxFit.contain,
              height: 135,
              width: 135,
            ),
            Column(
              children: [
                Container(
                  width: 235,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                    maxLines: 2,
                  ),
                ),
                Container(
                  width: 235,
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: Text(
                    '\$${product.price}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  ),
                ),
                // free shipping and in stock are removed
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black12,
                  ),
                  child: Row(children: [
                    InkWell(
                      onTap: () => decreaseQuantity(product),
                      child: Container(
                        width: 35,
                        height: 32,
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.remove,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                    ),
                    // to show the amount of product, we'll always have 1 of each
                    // Container(
                    //   width: 35,
                    //   height: 32,
                    //   alignment: Alignment.center,
                    //   child: Text(
                    //     quantity.toString(),
                    //     style: const TextStyle(
                    //       fontSize: 16,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //   ),
                    // ),
                    // InkWell(
                    //   onTap: () => increaseQuantity(product),
                    //   child: Container(
                    //     width: 35,
                    //     height: 32,
                    //     alignment: Alignment.center,
                    //     child: const Icon(
                    //       Icons.add,
                    //       color: Colors.black,
                    //       size: 18,
                    //     ),
                    //   ),
                    // ),
                  ]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
