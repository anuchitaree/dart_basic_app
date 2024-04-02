import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(75, 167, 98, 1.0),
        body: GradientContainer([Colors.greenAccent,Colors.amber,Colors.redAccent]),
      ),
    ),
  );
}

