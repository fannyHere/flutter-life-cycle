import 'package:flutter/material.dart';
import 'package:section_dart_flutter_tambahan/01%20widget%20lifecycle/statefull/createState.dart';

void main() {
  runApp(MyApp());
  print("CONTRSACTOR STATELESS/STATEFULL, diprint pertama kali");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: statefull_createstate(),
    );
  }
}
