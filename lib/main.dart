import 'package:flutter/material.dart';
import 'package:petsphere/husky.dart';
import 'package:petsphere/login-page.dart';
import 'package:petsphere/page1.dart';

void main() {
  runApp(const PetSphere());
}

class PetSphere extends StatelessWidget {
  const PetSphere({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page1()
    );
  }
}
