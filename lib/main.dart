import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/welcom_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(
          0xFF212325,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
