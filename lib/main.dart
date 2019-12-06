import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

//Can be recreated
class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}
//For Storing your state, cannot be recreated
class MyAppState extends State<MyApp> {  //Name+State
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex +1;
    });
    
    print(questionIndex);
  }


  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
              ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion, // point to the function not 
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            RaisedButton(
              child: Text('Answer 3'), 
              onPressed: () {
                //...
                print('answer 3 chosen');
              },
            ),

        ],),
      ),
    );
  }
}