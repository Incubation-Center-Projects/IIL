import 'package:flutter/material.dart';
<<<<<<< Updated upstream
import 'package:incubation2/pages/signup.dart';
=======
import 'package:incubation2/pages/Reset%20Password/mail.dart';
import 'package:incubation2/pages/Reset%20Password/reset_password.dart';
>>>>>>> Stashed changes
import 'package:incubation2/pages/startpage.dart';

void main() {
  runApp(MaterialApp(
<<<<<<< Updated upstream
    initialRoute: 'splash',
    routes: {
      'splash': (context) => StartPage(),
      'signup': (context) => SignUp(),
=======
    debugShowCheckedModeBanner: false,
    initialRoute: '/reset_password',
    routes: {
      '/': (context) => StartPage(),
      '/reset_password': (context) => ResetPassword(),
      '/check_mail': (context) => CheckMail(),
>>>>>>> Stashed changes
    },
  ));
}
