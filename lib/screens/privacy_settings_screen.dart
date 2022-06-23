// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nikah/widgets/settings_options_builder.dart';

class PrivacySettingsScreen extends StatefulWidget {
  const PrivacySettingsScreen({Key? key}) : super(key: key);

  @override
  _PrivacySettingsScreenState createState() => _PrivacySettingsScreenState();
}

class _PrivacySettingsScreenState extends State<PrivacySettingsScreen> {
  String mobileNumber = '+91 91000-00000';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 15.0),
          child: ListView(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Privacy Settings',
                style: TextStyle(
                  fontFamily: 'SourceSansPro-SemiBold',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 6.0,
              ),
              Text(
                'These settings help you control and manage your privacy',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffb1b1b3),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              OptionsBuilder(
                  labelText: 'Mobile No. (' + mobileNumber + ')',
                  optionsList: [
                    'Visible All',
                    'Only to Interest Sent / Accepted',
                    'Don’t show to anyone'
                  ]),
              OptionsBuilder(labelText: 'Album Privacy', optionsList: [
                'Visible to All (Recommended)',
                'Only to Paid Matches',
                'Only to Interest Sent/Accepted'
              ]),
              OptionsBuilder(labelText: 'Profile Visibility', optionsList: [
                'Show to All (Recommended)',
                'Only to Matches that Fit My Criteria',
                'Hide From All'
              ]),
              OptionsBuilder(
                  labelText: 'Voice Call Settings',
                  optionsList: ['All Matches', 'Only from Accepted Matches']),
              OptionsBuilder(
                  labelText: 'Video Call Settings',
                  optionsList: ['No Matches', 'Only from Accepted Matches']),
              SizedBox(
                height: 80.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
