import 'package:flutter/material.dart';
import 'package:week2_demo/question.dart';
import 'package:week2_demo/quiz.dart';
import 'package:week2_demo/result.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var index = 0;
  // var questions = [
  //   "What is your Favorite Color?",
  //   "What is your Favorite Animal?",
  //   "What is your Favorite Flower?"
  // ];
  var questionMap = [
    {
      'text': "What is your Fav color?",
      'answers': ['Blue', 'Red', 'Black']
    },
    {
      'text': "What is your Fav Flower?",
      'answers': ['Rose', 'Lily', 'Sunflower', 'Daisy']
    },
    {
      'text': "What is your Fav City?",
      'answers': ['Toronto', 'Paris', 'North York', 'MyCity']
    },
    {
      'text': "What is your Fav Animal?",
      'answers': ['Lion', 'Crocodile', 'Tiger', 'Snake', 'Shark']
    }
  ];

  void onButtonClicked() {
    setState(() {
      //setState --> call build Function (the whole function below)
      index = index + 1;
    });
  }

  // This widget is the root of your application.
  //this is the main interface
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('My Quiz App')),
        // body: const MyCustomForm(),

        body: index < questionMap.length //start of if condition
            ? Quiz(questionMap, index, onButtonClicked)
            : const Result(), //this is the Else part of if condition
      ),
    );
  }
}
