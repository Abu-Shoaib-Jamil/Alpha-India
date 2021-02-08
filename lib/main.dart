import 'package:flutter/material.dart';
import 'splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Alpha India"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SplashScreen(),
          ],
        ),
      ),
    );
  }
}
