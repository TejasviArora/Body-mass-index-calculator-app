import 'package:flutter/material.dart';
import 'result_page.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {

  final Function onTap;
  final String title;

  BottomButton({this.onTap,this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 5.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        color: kBottomContainerColor,
        padding: EdgeInsets.only(bottom: 5.0),
        child: Center(
            child: Text(title, style: kLargeTextButton)),
      ),
    );
  }
}
