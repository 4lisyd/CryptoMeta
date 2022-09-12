import 'package:crypto_meta/screens/Intro/Intro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Meta',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          ),
          primarySwatch: Colors.blue,
          primaryColorDark: Colors.black,
          primaryColorLight: Color(0xffd2d2d2),
          textTheme: const TextTheme(
            headline1: TextStyle(
              color: Colors.black,
              fontSize: 35,
              fontWeight: FontWeight.w600,
            ),
            button: TextStyle(
              color: Colors.white,
            ), // all the buttons use this text style
          )),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Intro(),
      // color: Colors.white,
    );
  }
}
// a stateful that returns a scaffold is needed.