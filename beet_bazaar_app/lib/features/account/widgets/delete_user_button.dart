import 'package:flutter/material.dart';

class DeleteUserButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const DeleteUserButton({
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
          shape: const StadiumBorder(),
          minimumSize: const Size(200, 60),
          maximumSize: const Size(double.infinity, 60),
          backgroundColor: const Color.fromARGB(255, 253, 51, 51),
          textStyle: const TextStyle(fontSize: 17)),
      child: Text(
        key: const Key('elevatedButtonText'),
        text,
      ),
    );
  }
}
