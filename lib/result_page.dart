import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'bottom_button.dart';
import 'aditya_birangal.dart';

class ResultPage extends StatelessWidget {
  final String bmi;
  final String result;
  final String solution;
  ResultPage({this.bmi, this.result, this.solution});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Your Result',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Expanded(
              child: ReusableCard(
            myColor: kActiveCardColor,
            myChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  result,
                  style: TextStyle(
                      color: Color(0xFF24D876),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  bmi,
                  style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                ),
                Text(
                  solution,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          )),
          InkWell(
            child: Text(
              '©️ Aditya Birangal',
              textAlign: TextAlign.center,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AdityaBirangal()));
            },
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonText: 'RE-CHECK',
          ),
        ],
      ),
    );
  }
}
