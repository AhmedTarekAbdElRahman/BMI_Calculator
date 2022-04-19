import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final int? result;
  final int? age;
  final bool? isMale;
  BMIResultScreen({
    @required this.age,
    @required this.isMale,
    @required this.result
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO( 0, 3, 41,10),
        title: Text(
          'BMI Result',
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Color.fromRGBO( 0, 3, 41,10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Gender : ${ isMale!  ?'Male' : 'Female'} ',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
              Text(
                'Result : $result',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
              Text(
                'Age : $age',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
