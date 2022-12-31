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
      // ignore: sort_child_properties_last
      child: Text(
        text,
      ),
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 60),
          alignment: Alignment.centerLeft,
          backgroundColor: Colors.white,
          onPrimary: Colors.black,
          textStyle: const TextStyle(fontSize: 17)),
    );
  }
}
