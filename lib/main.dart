import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'calculator2.dart';
import 'displayvalue_notifier.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CalculatorPage());
  }
}
