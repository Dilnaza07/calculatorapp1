
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'displayvalue_notifier.dart';


class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> DisplayValueNotifier(),
      child: CalculatorScreen(),
    );
  }
}


class CalculatorScreen extends StatelessWidget {
const CalculatorScreen({super.key});

@override
Widget build(BuildContext context) {
final notifier = context.read<DisplayValueNotifier>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(
                vertical: 24.0,
                horizontal: 12.0,
              ),
              child: DisplayValueText(),
            ),
            Expanded(child: Divider()),
            Column(
              children: [
                Row(
                  children: [
                    CalculatorButton(buttonText: '7',callback: notifier.calculation,),
                    CalculatorButton(buttonText: '8',callback: notifier.calculation,),
                    CalculatorButton(buttonText: '9',callback: notifier.calculation,),
                    CalculatorButton(buttonText: '/',callback: notifier.calculation,),
                  ],
                ),
                Row(
                  children: [
                    CalculatorButton(buttonText: '4',callback: notifier.calculation,),
                    CalculatorButton(buttonText: '5',callback: notifier.calculation,),
                    CalculatorButton(buttonText: '6',callback: notifier.calculation,),
                    CalculatorButton(buttonText: '*',callback: notifier.calculation,),
                  ],
                ),
                Row(
                  children: [
                    CalculatorButton(buttonText: '1',callback: notifier.calculation,),
                    CalculatorButton(buttonText: '2',callback: notifier.calculation,),
                    CalculatorButton(buttonText: '3',callback: notifier.calculation,),
                    CalculatorButton(buttonText: '-',callback: notifier.calculation,),
                  ],
                ),
                Row(
                  children: [
                    CalculatorButton(buttonText: '.',callback: notifier.calculation,),
                    CalculatorButton(buttonText: '0',callback: notifier.calculation,),
                    CalculatorButton(buttonText: '00',callback: notifier.calculation,),
                    CalculatorButton(buttonText: '+',callback: notifier.calculation,),
                  ],
                ),
                Row(
                  children: [
                    CalculatorButton(buttonText: 'CLEAR', callback: notifier.calculation,),
                    CalculatorButton(buttonText: '=', callback: notifier.calculation,),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({required this.buttonText, required this.callback});

  final String buttonText;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.all(24),
      ),
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      onPressed: () => callback(buttonText),
    ));
  }
}


class DisplayValueText extends StatelessWidget {
  const DisplayValueText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final displayValue = context.watch<DisplayValueNotifier>().displayValue;
    return Text(
      displayValue,
      style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
    );
  }
}