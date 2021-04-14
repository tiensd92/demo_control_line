import 'package:flutter/material.dart';

import 'demo_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          backgroundColor: Colors.white,
          primaryColor: Colors.white,
          brightness: Brightness.light,
          accentColor: Colors.white),
      home: DemoPage(),
    );
  }
}
