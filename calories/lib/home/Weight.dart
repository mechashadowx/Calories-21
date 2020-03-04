import 'package:calories/helper.dart';
import 'package:flutter/material.dart';

class Weight extends StatelessWidget {
  final int weight;
  final Function change;

  Weight({
    this.weight,
    this.change,
  });

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.only(bottom: data.size.width * 0.1),
      padding: EdgeInsets.all(data.size.width * 0.05),
      decoration: BoxDecoration(
        color: purple,
        borderRadius: BorderRadius.circular(data.size.width * 0.05),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: data.size.width * 0.05),
            child: Text(
              'WEIGHT',
              style: TextStyle(
                color: cyan,
                fontSize: data.size.width * 0.08,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  change(-1);
                },
                child: Image.asset(
                  'images/minus.png',
                  height: data.size.width * 0.1,
                  width: data.size.width * 0.1,
                ),
              ),
              Text(
                '${weight.toString()}lbs',
                style: TextStyle(
                  color: cyan,
                  fontSize: data.size.width * 0.12,
                ),
              ),
              GestureDetector(
                onTap: () {
                  change(1);
                },
                child: Image.asset(
                  'images/plus.png',
                  height: data.size.width * 0.1,
                  width: data.size.width * 0.1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
