import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(75, 167, 98, 1.0),
        body: GradientContainer(Colors.greenAccent,Colors.amber),
      ),
    ),
  );
}

