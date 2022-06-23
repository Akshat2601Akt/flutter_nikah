import 'package:flutter/material.dart';

class DemoClass extends StatelessWidget {
  const DemoClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          GestureDetector(
            child: Text('Hello'),
            onTap: () {
              print(screenHeight);
              print(screenWidth);
            },
          ),
          Container(
            color: Colors.grey,
            height: screenHeight * 0.5,
          ),
          Container(
            color: Colors.red,
            height: screenHeight * 0.5,
          ),
        ]),
      ),
    );
  }
}
