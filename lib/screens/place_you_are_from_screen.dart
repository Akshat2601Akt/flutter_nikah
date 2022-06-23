import 'package:flutter/material.dart';
import 'package:nikah/constants/constants.dart';
import '../widgets/continue_button.dart';
import '../widgets/dropdown_selector.dart';

class PlaceYouAreFromScreen extends StatefulWidget {
  const PlaceYouAreFromScreen({Key? key}) : super(key: key);

  @override
  _PlaceYouAreFromScreenState createState() => _PlaceYouAreFromScreenState();
}

class _PlaceYouAreFromScreenState extends State<PlaceYouAreFromScreen> {
  String cityValue = 'Yes';
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
                'Place you are from',
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
              const DropDownSelector('Nationality', [], 'Select'),
              const SizedBox(
                height: 31.0,
              ),
              const DropDownSelector('Residing Country', [], 'Select'),
              const SizedBox(
                height: 31.0,
              ),
              const DropDownSelector('Residing State', [], 'Select'),
              const SizedBox(
                height: 31.0,
              ),
              const DropDownSelector('Residing City', [], 'Select'),
              const SizedBox(
                height: 31.0,
              ),
              Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Is your native and residing city same?',
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
                              'Yes',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Radio(
                              value: 'Yes',
                              groupValue: cityValue,
                              activeColor: primaryColor1,
                              onChanged: (value) {
                                setState(() {
                                  cityValue = value.toString();
                                });
                              },
                            )
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'No',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Radio(
                              value: 'No',
                              groupValue: cityValue,
                              activeColor: primaryColor1,
                              onChanged: (value) {
                                setState(() {
                                  cityValue = value.toString();
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
                  Navigator.pushNamed(context, '/seventh');
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
