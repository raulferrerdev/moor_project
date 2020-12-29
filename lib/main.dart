import 'package:flutter/material.dart';
import 'package:moor_project/service_locator.dart';

import 'pages/home.dart';

Future<void> main() async {
  // Register the database service before the app starts
  await setupLocator();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Database',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
