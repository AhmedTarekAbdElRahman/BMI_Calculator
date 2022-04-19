import 'dart:math';
import 'package:bmi_calculator/bmi_app/bmi__result/bmi_result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 120.0;
  int age = 20;
  int weight = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI Calculator',
        ),
        backgroundColor: Color.fromRGBO(0, 3, 41, 10),
      ),
      body: Container(
        color: Color.fromRGBO(0, 3, 41, 10),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/image/male.png'),
                                color: Colors.white,
                                height: 90.0,
                                width: 90.0,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: isMale
                                ? Colors.blue
                                : Color.fromRGBO(0, 3, 41, 90),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/image/female.png'),
                                color: Colors.white,
                                height: 90.0,
                                width: 90.0,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: isMale
                                ? Color.fromRGBO(0, 3, 41, 90)
                                : Colors.pink,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'CM',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        activeColor: Colors.red,
                        value: height,
                        max: 220.0,
                        min: 80.0,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromRGBO(0, 3, 41, 90),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '$age',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  heroTag: 'age-',
                                  backgroundColor: Colors.red,
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.red,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  heroTag: 'age+',
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromRGBO(0, 3, 41, 90),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '$weight',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.red,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  heroTag: 'weight-',
                                  mini: true,
                                  child: Icon(
                                    Icons.remove,
                                  ),
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.red,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  heroTag: 'weight+',
                                  mini: true,
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromRGBO(0, 3, 41, 90),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.red,
                ),
                width: double.infinity,
                child: MaterialButton(
                  height: 70.0,
                  onPressed: () {
                    var result = weight / pow(height / 100, 2);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BMIResultScreen(
                          age: age,
                          result: result.round(),
                          isMale: isMale,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
