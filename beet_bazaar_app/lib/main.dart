import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BeetBazaar App',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        appBar: AppBar(title: const Text('Welcome to BeetBazaar!')),
        body: const Center(
          child: Text(
            'Flutter Demo Home Page',
          ),
        ),
      ),
    );
  }
}
