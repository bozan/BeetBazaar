import 'package:flutter/material.dart';

class CustomProductButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomProductButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: const Key('elevatedButton'),
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 60),
          alignment: Alignment.centerLeft,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          textStyle: const TextStyle(fontSize: 17)),
      child: Text(
        key: const Key('elevatedButtonText'),
        text,
      ),
    );
  }
}
