import 'package:flutter/material.dart';

//create a statelful  widget
class ProductOfDay extends StatefulWidget {
  const ProductOfDay({Key? key}) : super(key: key);

  @override
  State<ProductOfDay> createState() => _ProductOfDayState();
}
class _ProductOfDayState extends State<ProductOfDay> {
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
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Image.network('https://images-eu.ssl-images-amazon.com/images/G/31/img21/Wireless/WLA/TS/D37847648_Accessories_savingdays_Jan22_Cat_PC_1500.jpg',
          height: 235,
          fit: BoxFit.fitHeight,
        ),
        Container(
          padding: const EdgeInsets.only(left: 15,),
          alignment: Alignment.topLeft,
          child: const Text(
            '\$ 100',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 15, top: 5, right: 40,),
          child: const Text('Elif', maxLines: 2, overflow: TextOverflow.ellipsis),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Image.network(
                  'https://images.unsplash.com/photo-1671332337810-59047f82c495?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60', 
                  fit: BoxFit.fitWidth, 
                  width: 100, 
                  height: 100,
                ),
                Image.network(
                  'https://images.unsplash.com/photo-1671332337810-59047f82c495?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60', 
                  fit: BoxFit.fitWidth, 
                  width: 100, 
                  height: 100,
                ),
                Image.network(
                  'https://images.unsplash.com/photo-1671332337810-59047f82c495?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60', 
                  fit: BoxFit.fitWidth, 
                  width: 100, 
                  height: 100,
                ),
                Image.network(
                  'https://images.unsplash.com/photo-1671332337810-59047f82c495?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60', 
                  fit: BoxFit.fitWidth, 
                  width: 100, 
                  height: 100,
                ),
            ]),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15).copyWith(left: 15),
          alignment: Alignment.topLeft,
          child: Text(
            'See all products', 
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }
}