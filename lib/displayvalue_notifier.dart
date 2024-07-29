import 'package:flutter/material.dart';

class DisplayValueNotifier extends ChangeNotifier {
  String displayValue = '0';
  String _currentInput = '0';
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = '';


  void calculation(String buttonText) {
    if (buttonText == 'CLEAR') {
      _currentInput = '0';
      num1 = 0.0;
      num2 = 0.0;
      operand = '';
    } else if (buttonText == '+' ||
        buttonText == '-' ||
        buttonText == '*' ||
        buttonText == '/') {
      num1 = double.parse(displayValue);
      operand = buttonText;
      _currentInput = '0';
    } else if (buttonText == '.') {
      if (_currentInput.contains('.')) {
        return;
      } else {
        _currentInput = _currentInput + buttonText;
      }
    } else if (buttonText == '=') {
      num2 = double.parse(displayValue);

      switch (operand) {
        case '+':
          _currentInput = (num1 + num2).toString();
        case '-':
          _currentInput = (num1 - num2).toString();
        case '*':
          _currentInput = (num1 * num2).toString();
        case '/':
          _currentInput = (num1 / num2).toString();
      }

      num1 = 0.0;
      num2 = 0.0;
      operand = '';
    } else {
      _currentInput = _currentInput + buttonText;
    }

    print(_currentInput);

    displayValue = double.parse(_currentInput).toStringAsFixed(2);
    notifyListeners();
  }
}
