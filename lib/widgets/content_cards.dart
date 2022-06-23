// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ContentCards extends StatelessWidget {
  final Widget childWidget;

  const ContentCards({Key? key, required this.childWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 5.0,
                spreadRadius: 0.002,
                color: Color.fromRGBO(0, 0, 0, 0.25),
              ),
            ]),
        child: childWidget,
      ),
    );
  }
}
