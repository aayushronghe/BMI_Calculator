import 'package:flutter/material.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  Color setColor() {
    if (double.parse(bmiResult) > 25.0) {
      return Colors.red;
    } else if (double.parse(bmiResult) > 18.5) {
      return Colors.green;
    } else {
      return Colors.yellow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              margin: EdgeInsets.only(left: 20, top: 10),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.all(15),
              color: Color(0xff1d1e33),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      resultText,
                      style: TextStyle(fontSize: 25, color: setColor()),
                    ),
                  ),
                  SizedBox(height: 15),
                  Center(
                    child: Text(
                      bmiResult,
                      style: TextStyle(fontSize: 100, color: setColor()),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Text(
                      'Normal BMI range:',
                      style: TextStyle(color: Color(0xff8d8e98), fontSize: 20),
                    ),
                  ),
                  Center(
                    child: Text(
                      '18.5 - 25 kg/m2',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                  child: Text(
                'RECALCULATE BMI',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
              color: Color(0xffeb1555),
              margin: EdgeInsets.symmetric(vertical: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          ),
        ],
      ),
    );
  }
}
