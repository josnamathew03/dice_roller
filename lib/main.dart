import 'package:flutter/material.dart';
import 'package:learning/pages/dice_doller.dart';
import 'package:learning/pages/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      //backgroundColor: Color.fromARGB(20, 20, 20, 20),
      body: GradientContainer(
        Color.fromARGB(255, 33, 5, 109),
        Color.fromARGB(255,68,21,149),
      ),
    ),
  ));
}



