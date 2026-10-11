import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var currentNumber = 1;

  void regenerate() {
    setState(() {
      currentNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$currentNumber'),
              TextButton(
                onPressed: regenerate,
                child: const Text('Regeneruj'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
