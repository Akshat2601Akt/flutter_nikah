// ignore_for_file: must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  String label;
  String inputHint;
  InputForm(this.label, this.inputHint, {Key? key}) : super(key: key);

  @override
  InputFormState createState() {
    return InputFormState();
  }
}

class InputFormState extends State<InputForm> {
  final _registrationFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _registrationFormKey,
      child: Column(
        children: <Widget>[
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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  blurRadius: 2.0,
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                )
              ],
              color: Colors.white,
            ),
            child: TextFormField(
              style: TextStyle(
                fontFamily: 'NunitoSans',
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                  hintText: widget.inputHint,
                  hintStyle: TextStyle(
                    fontFamily: 'NunitoSans',
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                    color: Color(0xff94A3B8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: Colors.grey.shade300,
                      )),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 9.0, vertical: 8.0)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
