import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> four() async {
      Future.delayed(
        Duration(seconds: 3),
        () => print(4),
      );
    }

    print(1);
    print(2);
    print(3);

    //print(4);
    // Future<void> four = Future.delayed(
    //   const Duration(
    //     seconds: 3,
    //   ),
    // );
    // four.then((value) => print(4));
    four();

    print(5);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Async Dart',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
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
      appBar: AppBar(
        title: const Text("Async Dart"),
      ),
      body: Center(),
    );
  }
}
