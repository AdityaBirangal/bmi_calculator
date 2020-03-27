import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  final IconData myIcon;
  final String gender;
  IconContent({this.myIcon, this.gender});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          myIcon,
          size: 70,
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: kMyTextStyle,
        )
      ],
    );
  }
}
