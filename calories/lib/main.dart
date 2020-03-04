import 'package:calories/splash/Splash.dart';
import 'package:flutter/material.dart';
import 'home/HomePage.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calories',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Quicksand'),
      home: Splash(),
      routes: {
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}
