import 'package:beet_bazaar_app/constants/global_variables.dart';
import 'package:beet_bazaar_app/features/product_details/screens/product_details_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:beet_bazaar_app/features/search/services/search_services.dart';
import 'package:beet_bazaar_app/models/product.dart';

//create stateless widget
class CarouselImage extends StatefulWidget {
  const CarouselImage({Key? key}) : super(key: key);

  @override
  State<CarouselImage> createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
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
    return products != null
        ? CarouselSlider(
            key: Key('bottomButtonsCol'),
            items: products!.map(
              (i) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      ProductDetailScreen.routeName,
                      arguments: i,
                    );
                  },
                  child: Builder(
                    builder: (BuildContext context) => Image.network(
                      i.images[0],
                      fit: BoxFit.cover,
                      height: 200,
                    ),
                  ),
                );
              },
            ).toList(),
            options: CarouselOptions(
              viewportFraction: 1.0,
              autoPlay: true,
              height: 200,
              autoPlayInterval: const Duration(seconds: 3),
            ),
          )
        : CarouselSlider(
            key: Key('bottomButtonsCol'),
            items: GlobalVariables.carouselImages.map(
              (i) {
                return Builder(
                  builder: (BuildContext context) => Image.network(
                    i,
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                );
              },
            ).toList(),
            options: CarouselOptions(
              viewportFraction: 1.0,
              autoPlay: true,
              height: 200,
              autoPlayInterval: const Duration(seconds: 3),
            ),
          );
  }
}
