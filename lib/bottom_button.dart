import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonText;
  BottomButton({this.onTap, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        height: 60,
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10),
      ),
    );
  }
}
