// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 280.0,
                  width: 300.0,
                  child: Image.asset('images/Couple-pana 1.png'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Column(
                  children: [
                    Text(
                      'Find Your',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      'Best Partner',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Login or signup',
                  style: TextStyle(
                    fontFamily: 'NunitoSans',
                    fontSize: 12.0,
                    color: Color(0xff64748B),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35)),
                        hintText: 'Enter Mobile Number',
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 55.0,
                  width: 355.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Color(0xffD4A5FF),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/third');
                      },
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'OR',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xff64748B),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/Group 6.png'),
                    SizedBox(
                      width: 35.0,
                    ),
                    Image.asset('images/Group 5.png'),
                    SizedBox(
                      width: 35.0,
                    ),
                    Image.asset('images/Group 4.png'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      Text(
                        'By continuing, you are about to agree to the terms and',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff64748B),
                        ),
                      ),
                      Text(
                        'conditions, privacy policy',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff64748B),
                        ),
                      )
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
