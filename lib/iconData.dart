import 'package:flutter/material.dart';
import 'constants.dart';

class iconData extends StatelessWidget {
final icon;
final gender;

iconData({this.icon, this.gender});

@override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height:12.0,
        ),
        Text(gender,
            style: kLabelTextStyle,),
      ],
    );
  }
}