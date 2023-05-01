import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF5F4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Container(
                  child: Text(
                    'Create your Account',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        filled: true,
                        hintStyle:
                            TextStyle(color: Colors.grey[800], fontSize: 18),
                        hintText: "Enter Your Name",
                        fillColor: Colors.white70),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Enter Your Name",
                      fillColor: Colors.white70),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Enter Your Name",
                      fillColor: Colors.white70),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Enter Your Name",
                      fillColor: Colors.white70),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
