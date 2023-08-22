import 'package:flutter/material.dart';

import 'package:testing_first_app/gradient_container.dart..dart';

void main() {
  runApp(
    const  MaterialApp(
      home: Scaffold(
        body:GradientContainer(
         Color.fromARGB(255, 220, 90, 8),
          Color.fromARGB(253, 9, 20, 236)),
      ),
    ),
  );
}


