// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 88.0),
            child: Column(
              children: [
                Container(
                  height: 275.36,
                  width: 200.0,
                  child: Image.asset('images/image 1.png'),
                ),
                SizedBox(
                  height: 58.64,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Find Your ',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          'Partner',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 30,
                            color: Color(0xffD4A5FF),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'With Us',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Join us and socialize with',
                  style: TextStyle(
                    fontFamily: 'NunitoSans',
                    fontSize: 14.0,
                  ),
                ),
                Text(
                  'millions of people',
                  style: TextStyle(
                    fontFamily: 'NunitoSans',
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(
                  height: 43.0,
                ),
                Container(
                  height: 55.0,
                  width: 182.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10.0,
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                      )
                    ],
                    color: Color(0xffD4A5FF),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/second');
                      },
                      child: Text(
                        'Continue',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 8.0,
                      width: 24.0,
                      decoration: BoxDecoration(
                          color: Color(0xffD4A5FF),
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                    Container(
                      height: 8.0,
                      width: 8.0,
                      decoration: BoxDecoration(
                          color: Color(0xffE5E5E5),
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                    Container(
                      height: 8.0,
                      width: 8.0,
                      decoration: BoxDecoration(
                          color: Color(0xffE5E5E5),
                          borderRadius: BorderRadius.circular(10.0)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
