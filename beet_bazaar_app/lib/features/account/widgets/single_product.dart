import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String image;
  const SingleProduct({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: const Key('singleProductCon'),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: DecoratedBox(
        key: const Key('singleProductConDecoratedBox'),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black12,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Container(
          key: const Key('singleProductConContainer'),
          width: 180,
          padding: const EdgeInsets.all(10),
          child: Image.network(
            key: const Key('singleProductConContainerImage'),
            image,
            fit: BoxFit.fitHeight,
            width: 180,
          ),
        ),
      ),
    );
  }
}
