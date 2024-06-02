import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget MaleFemaleWidget(String name) {
  IconData icon;

  if (name == 'MALE') {
    icon = FontAwesomeIcons.mars;
  } else {
    icon = FontAwesomeIcons.venus;
  }

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, size: 80.0),
      SizedBox(
        height: 15.0,
      ),
      Text(
        name,
        style: TextStyle(
          fontSize: 18.0,
          color: Color(0xff8d8e98),
        ),
      )
    ],
  );
}
