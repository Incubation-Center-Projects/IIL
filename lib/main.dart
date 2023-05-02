import 'package:flutter/material.dart';
import 'package:incubation2/pages/Reset%20Password/new_password.dart';
import 'package:incubation2/pages/bottomNav.dart';

import 'package:incubation2/pages/signin.dart';

import 'package:incubation2/pages/signup.dart';
import 'package:incubation2/pages/Reset%20Password/mail.dart';
import 'package:incubation2/pages/Reset%20Password/reset_password.dart';
import 'package:incubation2/pages/startpage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'bottom_nav',
      routes: {
        'splash': (context) => StartPage(),
        'signup': (context) => SignUp(),
        'reset_password': (context) => ResetPassword(),
        'check_mail': (context) => CheckMail(),
        'new_password': (context) => NewPassword(),
        'bottom_nav': (context) => MyHomePage(),
        'signin': (context) => Signin()
      },
    ),
  );
}
