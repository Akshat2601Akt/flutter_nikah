// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Item2 extends StatelessWidget {
  const Item2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: 170.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 25.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Luxury ",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "6 Months",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 11.0,
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Divider(
                  thickness: 1.5,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'Rs. 5050',
                style: TextStyle(
                  color: Color(0xffD4A5FF),
                  fontSize: 26.0,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      'Get 25 verified contact members',
                      style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontSize: 12.0,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      'Instant chat & messages',
                      style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontSize: 12.0,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      'Photo lock options',
                      style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontSize: 12.0,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      'Get highlighted to matches',
                      style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontSize: 12.0,
                      ),
                    )
                  ],
                ),
                Text(
                  'Priority over free members',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Color(0xffB1B1B3),
                      fontSize: 12.0,
                      fontFamily: 'NunitoSans'),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 29.0,
                  width: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3.0,
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
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
