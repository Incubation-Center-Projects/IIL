import 'package:flutter/material.dart';
import 'package:incubation2/constants/colors.dart';

class CheckMail extends StatefulWidget {
  const CheckMail({super.key});

  @override
  State<CheckMail> createState() => _CheckMailState();
}

class _CheckMailState extends State<CheckMail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Bg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: Text1,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Icon(
                  Icons.mail_lock_rounded,
                  size: MediaQuery.of(context).size.height * 0.22,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                    'Check your mail',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Text(
                    'We have sent a password recover instructions to your email.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      letterSpacing: 1.5,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/check_mail');
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                      color: Button,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Text(
                        'Open Email App',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/reset_password');
                  },
                  child: Center(
                    child: Text(
                      'Skip, I\'ll confirm later',
                      style: TextStyle(
                        color: Text1,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'Did not receive the mail? Check your spam folder \n',
                              style: TextStyle(
                                color: Text1,
                                fontSize: 14,
                              ),
                            ),
                            TextSpan(
                              text: '\n',
                              style: TextStyle(
                                color: Text1,
                                fontSize: 5,
                              ),
                            ),
                            TextSpan(
                              text: 'OR\n',
                              style: TextStyle(
                                color: Text1,
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(
                              text: '\n',
                              style: TextStyle(
                                color: Text1,
                                fontSize: 5,
                              ),
                            ),
                            TextSpan(
                              text: 'Try using another email.',
                              style: TextStyle(
                                color: Button,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
