import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color myColor;
  final Widget myChild;
  final Function onPress;

  ReusableCard({@required this.myColor, this.myChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: myChild,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: myColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
