import 'dart:math';

class Brain {
  final int height;
  final int weight;
  double _bmi;
  Brain({this.height, this.weight});

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getSolution() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have normal body weight. Great job !';
    } else {
      return 'You have lower than normal body weight. You can eat bit more';
    }
  }
}
