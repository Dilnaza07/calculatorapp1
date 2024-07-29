// import 'package:calculatorapp/displayvalue_notifier.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// // class Calculator extends StatefulWidget {
// //   const Calculator({super.key});
// //
// //   @override
// //   State<Calculator> createState() => _CalculatorState();
// // }
// //
// // class _CalculatorState extends State<Calculator> {
// // String displayValue = '0';
// // String _currentInput = '0';
// // double num1 = 0.0;
// // double num2 = 0.0;
// // String operand = '';
// //
// // void calculation(String buttonText) {
// //   if (buttonText == 'AC') {
// //     String _currentInput = '0';
// //     double num1 = 0.0;
// //     double num2 = 0.0;
// //     String operand = '';
// //   } else if (buttonText == '+' ||
// //       buttonText == '-' ||
// //       buttonText == 'x' ||
// //       buttonText == '/') {
// //     num1 = double.parse(displayValue);
// //     operand = buttonText;
// //     _currentInput = '0';
// //   } else if (buttonText == '.') {
// //     if (_currentInput.contains('.')) {
// //       return;
// //     } else {
// //       _currentInput = _currentInput + buttonText;
// //     }
// //   } else if (buttonText == '=') {
// //     num2 = double.parse(displayValue);
// //
// //     switch (operand) {
// //       case '+':
// //         _currentInput = (num1 + num2).toString();
// //       case '-':
// //         _currentInput = (num1 - num2).toString();
// //       case '*':
// //         _currentInput = (num1 * num2).toString();
// //       case '/':
// //         _currentInput = (num1 / num2).toString();
// //     }
// //
// //     num1 = 0.0;
// //     num2 = 0.0;
// //     operand = '';
// //   } else {
// //     _currentInput = _currentInput + buttonText;
// //   }
// //
// //   print(_currentInput);
// //
// //   setState(() {
// //     displayValue = double.parse(_currentInput).toStringAsFixed(2);
// //   });
// // }
//
// class CalculatorScreen extends StatelessWidget {
//   const CalculatorScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final notifier = context.read<DisplayValueNotifier>();
//
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: Text(
//           'Calculator',
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//         backgroundColor: Colors.black,
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 5),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             //calculator display
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.all(10),
//                   child: DisplayValueText(),
//                 ),
//               ],
//             ),
//
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 //here buttons function will be called where we will pass some arguments
//                 CalculatorButton(
//                   text: 'AC',
//                   buttonColor: Colors.grey,
//                   txtColor: Colors.black,
//                   callback: notifier.calculation,
//                 ),
//                 CalculatorButton(
//                   text: '+/-',
//                   buttonColor: Colors.grey,
//                   txtColor: Colors.black,
//                   callback: () {},
//                 ),
//                 CalculatorButton(
//                   text: '%',
//                   buttonColor: Colors.grey,
//                   txtColor: Colors.black,
//                   callback: notifier.calculation,
//                 ),
//                 CalculatorButton(
//                   text: '/',
//                   buttonColor: Colors.amber[700]!,
//                   txtColor: Colors.white,
//                   callback: notifier.calculation,
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             //now we will copy above row and mane more rows
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 //here buttons function will be called where we will pass some arguments
//                 CalculatorButton(
//                   text: '7',
//                   buttonColor: Colors.grey[850]!,
//                   txtColor: Colors.white,
//                   callback: notifier.calculation,
//                 ),
//                 CalculatorButton(
//                   text: '8',
//                   buttonColor: Colors.grey[850]!,
//                   txtColor: Colors.white,
//                   callback: notifier.calculation,
//                 ),
//                 CalculatorButton(
//                   text: '9',
//                   buttonColor: Colors.grey[850]!,
//                   txtColor: Colors.white,
//                   callback: notifier.calculation,
//                 ),
//                 CalculatorButton(
//                   text: 'x',
//                   buttonColor: Colors.amber[700]!,
//                   txtColor: Colors.white,
//                   callback: notifier.calculation,
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 //here buttons function will be called where we will pass some arguments
//                 CalculatorButton(
//                   text: '4',
//                   buttonColor: Colors.grey[850]!,
//                   txtColor: Colors.white,
//                   callback: notifier.calculation,
//                 ),
//                 CalculatorButton(
//                   text: '5',
//                   buttonColor: Colors.grey[850]!,
//                   txtColor: Colors.white,
//                   callback: notifier.calculation,
//                 ),
//                 CalculatorButton(
//                   text: '6',
//                   buttonColor: Colors.grey[850]!,
//                   txtColor: Colors.white,
//                   callback: notifier.calculation,
//                 ),
//                 CalculatorButton(
//                   text: '-',
//                   buttonColor: Colors.amber[700]!,
//                   txtColor: Colors.white,
//                   callback: notifier.calculation,
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 //here buttons function will be called where we will pass some arguments
//                 CalculatorButton(
//                   text: '1',
//                   buttonColor: Colors.grey[850]!,
//                   txtColor: Colors.white,
//                   callback: notifier.calculation,
//                 ),
//                 CalculatorButton(
//                   text: '2',
//                   buttonColor: Colors.grey[850]!,
//                   txtColor: Colors.white,
//                   callback: notifier.calculation,
//                 ),
//                 CalculatorButton(
//                   text: '3',
//                   buttonColor: Colors.grey[850]!,
//                   txtColor: Colors.white,
//                   callback: notifier.calculation,
//                 ),
//                 CalculatorButton(
//                   text: '+',
//                   buttonColor: Colors.amber[700]!,
//                   txtColor: Colors.white,
//                   callback: notifier.calculation,
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             //now last row is different as it has 0 button
//
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 //This is button 0
//                 Expanded(
//                   flex: 2,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       //TODO button function
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.grey[850]!,
//                       shape: StadiumBorder(),
//                       padding: EdgeInsets.all(20),
//                     ),
//                     child: Text(
//                       '0',
//                       style: TextStyle(fontSize: 35, color: Colors.white),
//                     ),
//                   ),
//                 ),
//                 CalculatorButton(
//                   text: ',',
//                   buttonColor: Colors.grey[850]!,
//                   txtColor: Colors.white,
//                   callback: notifier.calculation,
//                 ),
//                 CalculatorButton(
//                   text: '=',
//                   buttonColor: Colors.amber[700]!,
//                   txtColor: Colors.white,
//                   callback: notifier.calculation,
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// //here we will write calculator logic for the app
// }
//
// class CalculatorButton extends StatelessWidget {
//   const CalculatorButton(
//       {super.key,
//       required this.text,
//       required this.buttonColor,
//       required this.txtColor,
//       required this.callback});
//
//   final String text;
//   final Color buttonColor;
//   final Color txtColor;
//   final Function callback;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Expanded(
//         child: ElevatedButton(
//           onPressed: () => callback(text),
//           style: ElevatedButton.styleFrom(
//             backgroundColor: buttonColor,
//             shape: CircleBorder(),
//             padding: EdgeInsets.all(20),
//           ),
//           child: Text(
//             text,
//             style: TextStyle(fontSize: 35, color: txtColor),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class DisplayValueText extends StatelessWidget {
//   const DisplayValueText({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final displayValue = context.watch<DisplayValueNotifier>().displayValue;
//     return Text(
//       displayValue,
//       textAlign: TextAlign.left,
//       style: TextStyle(color: Colors.white, fontSize: 40),
//     );
//   }
// }
