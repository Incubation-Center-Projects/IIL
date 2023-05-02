import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:incubation2/constants/colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDf5f4),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.89,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                          left: 0.0,
                          top: 40,
                        )),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Create your Account',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 40),
                    SizedBox(
                      height: 40,
                      width: 400,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.person,
                            size: 18,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          hintStyle:
                              TextStyle(color: Colors.grey[500], fontSize: 15),
                          hintText: "Enter Name",
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 40,
                      width: 400,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.mail,
                            size: 18,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          hintStyle:
                              TextStyle(color: Colors.grey[500], fontSize: 15),
                          hintText: "Enter Mail",
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 40,
                      width: 400,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.lock,
                            size: 18,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          hintStyle:
                              TextStyle(color: Colors.grey[500], fontSize: 15),
                          hintText: "Enter Password",
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 40,
                      width: 400,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.bottom,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.lock,
                            size: 18,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          hintStyle:
                              TextStyle(color: Colors.grey[500], fontSize: 15),
                          hintText: "Confirm Password",
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'bottom_nav');
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
                            'Sign Up',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text('or continue with'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          FontAwesomeIcons.google,
                          size: 18,
                        ),
                        Icon(
                          FontAwesomeIcons.facebook,
                          size: 18,
                        ),
                        Icon(
                          FontAwesomeIcons.apple,
                          size: 18,
                        ),
                        Icon(
                          FontAwesomeIcons.linkedin,
                          size: 18,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?'),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'signin');
                          },
                          child: Text(
                            ' Sign in',
                            style: TextStyle(color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
