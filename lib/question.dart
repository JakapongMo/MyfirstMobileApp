import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;

  //constructor set
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container( 
      //turn widget to full width
      width: double.infinity,
      margin: EdgeInsets.all(10) ,
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
        ),
    );
  }
}