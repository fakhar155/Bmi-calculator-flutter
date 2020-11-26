import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String text;

  BottomButton({this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kLargeButtonTextStyle,
          ),
        ),
        width: double.infinity,
        height: kBottomContainerHeight,
        color: Color(0xFFEB1555),
        padding: EdgeInsets.only(bottom: 20),
        margin: EdgeInsets.only(top: 10),
      ),
    );
  }
}
