import 'package:flutter/material.dart';
import 'package:nikah/constants/constants.dart';
import 'package:nikah/widgets/dropdown_selector.dart';
import '../widgets/continue_button.dart';
import '../forms/input_form.dart';

class PersonalDetailsScreen extends StatefulWidget {
  const PersonalDetailsScreen({Key? key}) : super(key: key);

  @override
  _PersonalDetailsScreenState createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  String bornValue = 'Born';
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
                'Personal Details',
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
                'Profile with more information gets better response',
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
              InputForm('Bride / Groom’s Name', 'ABC'),
              const SizedBox(
                height: 24.0,
              ),
              InputForm('Date of Birth', 'Date of Birth'),
              const SizedBox(
                height: 31.0,
              ),
              const DropDownSelector(
                  'Marital Status',
                  [
                    'Select',
                    'Never Married',
                    'Divorced',
                    'Widowed',
                    'Divorced',
                    'Separated'
                  ],
                  'Select'),
              const SizedBox(
                height: 31.0,
              ),
              const DropDownSelector(
                  'Math’hab Followed',
                  ['Select', 'Hanafi', 'Maliki', 'Shafi\'i', 'Hanbali'],
                  'Select'),
              const SizedBox(
                height: 31.0,
              ),
              const DropDownSelector(
                  'Religious Interest', ['Select'], 'Select'),
              const SizedBox(
                height: 31.0,
              ),
              Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Born or Reverted',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Born',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Radio(
                              value: 'Born',
                              groupValue: bornValue,
                              activeColor: primaryColor1,
                              onChanged: (value) {
                                setState(() {
                                  bornValue = value.toString();
                                });
                              },
                            )
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Reverted',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Radio(
                              value: 'Reverted',
                              groupValue: bornValue,
                              activeColor: primaryColor1,
                              onChanged: (value) {
                                setState(() {
                                  bornValue = value.toString();
                                });
                              },
                            )
                          ]),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 44.0,
              ),
              ContinueButton(
                onPress: () {
                  Navigator.pushNamed(context, '/fifth');
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
