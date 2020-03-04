import 'package:calories/calculate/Calculate.dart';
import 'package:calories/helper.dart';
import 'package:calories/home/Exercise.dart';
import 'package:calories/home/Height.dart';
import 'package:calories/home/Weight.dart';
import 'package:flutter/material.dart';
import 'Gender.dart';

class HomePage extends StatefulWidget {
  static final String id = 'HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int gender, height, weight;
  List<bool> exercise;

  @override
  void initState() {
    super.initState();
    gender = 1;
    height = 500;
    weight = 130;
    exercise = List();
    exercise.add(true);
    exercise.add(false);
    exercise.add(false);
  }

  changeGender(int newGender) {
    setState(() {
      gender = newGender;
    });
  }

  changeHeight(int newHeight) {
    setState(() {
      height = newHeight;
    });
  }

  changeWeight(int newWeight) {
    setState(() {
      if (newWeight == -1 && weight == 1) {
        return;
      }
      weight += newWeight;
    });
  }

  changeExercise(int newExercise) {
    setState(() {
      for (int i = 0; i < 3; i++) {
        exercise[i] = false;
      }
      exercise[newExercise] = true;
    });
  }

  calculate() {
    int calories = weight;
    if (exercise[0]) calories *= 13;
    if (exercise[1]) calories *= 15;
    if (exercise[2]) calories *= 18;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Calculate(
          calories: calories.toString(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: blackBlue,
      body: Container(
        height: data.size.height,
        width: data.size.width,
        padding: EdgeInsets.all(data.size.width * 0.1),
        child: Center(
          child: ListView(
            children: <Widget>[
              Gender(
                gender: gender,
                change: changeGender,
              ),
              Height(
                height: height,
                change: changeHeight,
              ),
              Weight(
                weight: weight,
                change: changeWeight,
              ),
              Exercise(
                exercise: exercise,
                change: changeExercise,
              ),
              GestureDetector(
                onTap: calculate,
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
