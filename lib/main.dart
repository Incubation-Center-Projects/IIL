import 'package:flutter/material.dart';
import 'package:incubation2/pages/signup.dart';
import 'package:incubation2/pages/startpage.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'splash',
    routes: {
      'splash': (context) => StartPage(),
      'signup': (context) => SignUp(),
    },
  ));
}
