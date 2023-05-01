import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.8,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Column(
            children: [
              Image.asset(
                'assets/img1.png',
                height: 201,
              ),
              SizedBox(height: 40),
              Text(
                'Creating Leaders throughout the India',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'IIL is an initiative where we work for students with the vision of cultivating a strong character and personality in them.',
                textAlign: TextAlign.center,
                style: TextStyle(letterSpacing: 2),
              ),
              SizedBox(height: 80),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'signup');
                },
                child: Container(
                  height: 50,
                  width: 260,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
