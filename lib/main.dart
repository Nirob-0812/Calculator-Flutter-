import 'package:flutter/material.dart';
import 'CalculatePage/CalculatePage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CalculatePage();
  }
}
