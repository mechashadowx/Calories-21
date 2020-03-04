import 'package:calories/helper.dart';
import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  final int gender;
  final Function change;

  Gender({
    this.gender,
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
            padding: EdgeInsets.only(bottom: data.size.width * 0.05),
            child: Text(
              'GENDER',
              style: TextStyle(
                color: cyan,
                fontSize: data.size.width * 0.08,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: data.size.width * 0.05),
                child: GestureDetector(
                  onTap: () {
                    change(1);
                  },
                  child: Image.asset(
                    (gender == 1 ? 'images/SM.png' : 'images/NSM.png'),
                    height: data.size.width * 0.2,
                    width: data.size.width * 0.1,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: data.size.width * 0.05),
                child: GestureDetector(
                  onTap: () {
                    change(0);
                  },
                  child: Image.asset(
                    (gender == 0 ? 'images/SF.png' : 'images/NSF.png'),
                    height: data.size.width * 0.2,
                    width: data.size.width * 0.1,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
