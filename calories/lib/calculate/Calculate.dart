import 'package:calories/helper.dart';
import 'package:flutter/material.dart';

class Calculate extends StatelessWidget {
  final String calories;

  Calculate({
    this.calories,
  });

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: purple,
      body: Container(
        child: Center(
          child: Text(
            calories,
            style: TextStyle(
              color: cyan,
              fontSize: data.size.width * 0.2,
            ),
          ),
        ),
      ),
    );
  }
}
