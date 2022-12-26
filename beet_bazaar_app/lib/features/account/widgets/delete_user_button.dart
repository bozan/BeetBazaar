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
      // ignore: sort_child_properties_last
      child: Text(
        text,
      ),
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          minimumSize: const Size(200, 60),
          maximumSize: const Size(double.infinity, 60),
          backgroundColor: const Color.fromARGB(255, 253, 51, 51),
          textStyle: const TextStyle(fontSize: 17)),
    );
  }
}
