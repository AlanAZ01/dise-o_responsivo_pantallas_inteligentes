import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'examples/layout_builder_example.dart';
import 'examples/orientation_builder_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Responsive App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
