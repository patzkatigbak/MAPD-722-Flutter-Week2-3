import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var index = 0;
  var questions = [
    "what is your Favorite Color?",
    "What is your Favorite Animal?"
  ];

  void onButtonClicked() {
    print('button clicked!');
    index = index + 1;
  }

  // This widget is the root of your application.
  //this is the main interface
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('My Quiz App')),
        // body: const MyCustomForm(),
        body: Center(
          child: Column(
            children: [
              Text(questions[index]),
              ElevatedButton(onPressed: onButtonClicked, child: Text('Red!')),
              TextButton(
                  onPressed: onButtonClicked, child: const Text('Green!')),
            ],
          ),
        ),
      ),
    );
  }
}
