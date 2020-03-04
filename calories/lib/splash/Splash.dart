import 'package:calories/helper.dart';
import 'package:calories/home/HomePage.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  start() {
    Navigator.pushReplacementNamed(context, HomePage.id);
  }

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: blackBlue,
      body: Container(
        padding: EdgeInsets.all(data.size.width * 0.1),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Calories',
                style: TextStyle(
                  color: cyan,
                  fontSize: data.size.width * 0.2,
                ),
              ),
              Text(
                'Calculate How Many Calories You need',
                style: TextStyle(
                  color: cyan,
                  fontSize: data.size.width * 0.1,
                ),
                textAlign: TextAlign.center,
              ),
              GestureDetector(
                onTap: start,
                child: Container(
                  decoration: BoxDecoration(
                    color: purple,
                    borderRadius: BorderRadius.circular(
                      data.size.width * 0.05,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Calculate',
                      style: TextStyle(
                        color: cyan,
                        fontSize: data.size.width * 0.1,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
