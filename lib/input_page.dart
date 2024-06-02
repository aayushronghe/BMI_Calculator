import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 73.0;
const activeCardColor = 0xff1d1e33;
const inactiveCardColor = 0xff111328;

enum Gender { male, female, none }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectGender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectGender = Gender.male;
                      });
                    },
                    colour: selectGender == Gender.male
                        ? Color(activeCardColor)
                        : Color(inactiveCardColor),
                    cardChild: MaleFemaleWidget('MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectGender = Gender.female;
                      });
                    },
                    colour: selectGender == Gender.female
                        ? Color(activeCardColor)
                        : Color(inactiveCardColor),
                    cardChild: MaleFemaleWidget('FEMALE'),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: Color(activeCardColor),
              cardChild: Row(),
              onPress: () {},
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Color(activeCardColor),
                    cardChild: Column(),
                    onPress: () {},
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(activeCardColor),
                    cardChild: Column(),
                    onPress: () {},
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Center(
                child: Text(
              'Calculate',
              style: TextStyle(fontSize: 25),
            )),
            color: Color(0xffeb1555),
            margin: EdgeInsets.symmetric(vertical: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
