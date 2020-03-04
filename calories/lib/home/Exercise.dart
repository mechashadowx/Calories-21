import 'package:calories/helper.dart';
import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  final List<bool> exercise;
  final Function change;

  Exercise({
    this.exercise,
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
            child: Row(
              children: <Widget>[
                Text(
                  'EXERCISE ',
                  style: TextStyle(
                    color: cyan,
                    fontSize: data.size.width * 0.08,
                  ),
                ),
                Text(
                  'Times/Week',
                  style: TextStyle(
                    color: lightCyan,
                    fontSize: data.size.width * 0.05,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CustomSelect(
                id: 0,
                title: 'zero',
                active: exercise,
                change: change,
              ),
              CustomSelect(
                id: 1,
                title: '1 - 4',
                active: exercise,
                change: change,
              ),
              CustomSelect(
                id: 2,
                title: '5 - 7',
                active: exercise,
                change: change,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomSelect extends StatelessWidget {
  final int id;
  final String title;
  final List<bool> active;
  final Function change;

  CustomSelect({
    this.id,
    this.title,
    this.active,
    this.change,
  });

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            change(id);
          },
          child: Container(
            height: data.size.width * 0.06,
            width: data.size.width * 0.06,
            decoration: BoxDecoration(
              color: blackBlue,
              shape: BoxShape.circle,
            ),
            child: active[id]
                ? Center(
                    child: Container(
                      height: data.size.width * 0.04,
                      width: data.size.width * 0.04,
                      decoration: BoxDecoration(
                        color: cyan,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                : Container(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: data.size.width * 0.02),
          child: Text(
            title,
            style: TextStyle(
              color: cyan,
              fontSize: data.size.width * 0.05,
            ),
          ),
        ),
      ],
    );
  }
}
