import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homeScreen.dart';

class resultScreen extends StatelessWidget {
  final bool isMale;
  final double result;
  final int age;

  resultScreen({
    @required this.isMale,
    @required this.result,
    @required this.age,

});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text
          (
          'Result',
          style: TextStyle
            (
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
          'Gender : ${isMale ? 'Male' :'Female' }',
          style: TextStyle
            (
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Result : ${result.round()}',
          style: TextStyle
            (
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Age : $age',
          style: TextStyle
            (
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),

        ],
    ),
      )

    );
  }
}
