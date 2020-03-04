import 'package:calories/helper.dart';
import 'package:flutter/material.dart';

class Height extends StatelessWidget {
  final int height;
  final Function change;

  Height({
    this.height,
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
          Text(
            'HEIGHT',
            style: TextStyle(
              color: cyan,
              fontSize: data.size.width * 0.08,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: data.size.width * 0.05),
            child: Text(
              '${height.toString()[0]}.${height.toString()[1]}${height.toString()[2]}ft',
              style: TextStyle(
                color: cyan,
                fontSize: data.size.width * 0.12,
              ),
            ),
          ),
          Container(
            child: Center(
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: blackBlue,
                  inactiveTrackColor: lightBlackBlue,
                  trackShape: RoundedRectSliderTrackShape(),
                  trackHeight: 10.0,
                  thumbColor: cyan,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                ),
                child: Slider(
                  value: height.toDouble(),
                  onChanged: (val) {
                    change(val.toInt());
                  },
                  min: 100,
                  max: 700,
                  divisions: 700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
