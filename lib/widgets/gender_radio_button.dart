// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class GenderRadioButton extends StatefulWidget {
  final String label;
  const GenderRadioButton(this.label, {Key? key}) : super(key: key);

  @override
  _GenderRadioButtonState createState() => _GenderRadioButtonState();
}

class _GenderRadioButtonState extends State<GenderRadioButton> {
  String genderValue = 'Male';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.label,
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 12.0,
        ),
        Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Male',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Radio(
                value: 'Male',
                groupValue: genderValue,
                activeColor: Color(0xFFD4A5FF),
                onChanged: (value) {
                  setState(() {
                    genderValue = value.toString();
                  });
                },
              )
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Female',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Radio(
                value: 'Female',
                groupValue: genderValue,
                activeColor: Color(0xFFD4A5FF),
                onChanged: (value) {
                  setState(() {
                    genderValue = value.toString();
                  });
                },
              )
            ]),
          ],
        ),
      ],
    );
  }
}
