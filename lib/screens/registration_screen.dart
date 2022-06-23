import 'package:flutter/material.dart';
import 'package:nikah/widgets/gender_radio_button.dart';
import '../widgets/continue_button.dart';
import '../widgets/dropdown_selector.dart';
import '../forms/input_form.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 15.0),
          child: ListView(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'Registration',
                style: TextStyle(
                  fontFamily: 'SourceSansPro-SemiBold',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 6.0,
              ),
              const Text(
                'Update these details to get suitable matches',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffb1b1b3),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              InputForm('Email', 'Enter'),
              const SizedBox(
                height: 24.0,
              ),
              InputForm('Password', 'Password'),
              const SizedBox(
                height: 31.0,
              ),
              const DropDownSelector('Country',
                  ['India', 'USA', 'United Kingdom', 'Pakistan'], 'India'),
              const SizedBox(
                height: 31.0,
              ),
              InputForm('Mobile No.', '+91 90000 00000'),
              const SizedBox(
                height: 31.0,
              ),
              const GenderRadioButton('Gender Preference'),
              const SizedBox(
                height: 31.0,
              ),
              const DropDownSelector(
                  'Mother Tongue',
                  ['Hindi', 'Urdu', 'English', 'Tamil', 'Bengali', 'Gujrati'],
                  'Hindi'),
              const SizedBox(
                height: 31.0,
              ),
              const DropDownSelector('Profile Created By',
                  ['Self', 'Father', 'Mother', 'Sibling', 'Friend'], 'Self'),
              const SizedBox(
                height: 44.0,
              ),
              ContinueButton(
                onPress: () {
                  Navigator.pushNamed(context, '/forth');
                },
              ),
              const SizedBox(
                height: 40.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
