import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My flutter app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Core());
  }
}
