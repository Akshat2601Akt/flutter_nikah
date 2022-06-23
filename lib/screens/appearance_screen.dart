import 'package:flutter/material.dart';
import 'package:nikah/constants/constants.dart';
import '../widgets/continue_button.dart';
import '../widgets/dropdown_selector.dart';

class AppearanceScreen extends StatefulWidget {
  const AppearanceScreen({Key? key}) : super(key: key);

  @override
  _AppearanceScreenState createState() => _AppearanceScreenState();
}

class _AppearanceScreenState extends State<AppearanceScreen> {
  String complexionValue = 'Medium';
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
                'Your Appearance',
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
              const DropDownSelector('Height', [], 'Select'),
              const SizedBox(
                height: 31.0,
              ),
              Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Complexion',
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
                              'Medium',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Radio(
                              value: 'Medium',
                              groupValue: complexionValue,
                              activeColor: primaryColor1,
                              onChanged: (value) {
                                setState(() {
                                  complexionValue = value.toString();
                                });
                              },
                            )
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Fair',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Radio(
                              value: 'Fair',
                              groupValue: complexionValue,
                              activeColor: primaryColor1,
                              onChanged: (value) {
                                setState(() {
                                  complexionValue = value.toString();
                                });
                              },
                            )
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Wheatish',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Radio(
                              value: 'Wheatish',
                              groupValue: complexionValue,
                              activeColor: primaryColor1,
                              onChanged: (value) {
                                setState(() {
                                  complexionValue = value.toString();
                                });
                              },
                            )
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Dark',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Radio(
                              value: 'Dark',
                              groupValue: complexionValue,
                              activeColor: primaryColor1,
                              onChanged: (value) {
                                setState(() {
                                  complexionValue = value.toString();
                                });
                              },
                            )
                          ]),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 27.0,
              ),
              const DropDownSelector('Any Disability', [], 'Select'),
              const SizedBox(
                height: 64.0,
              ),
              ContinueButton(
                onPress: () {
                  Navigator.pushNamed(context, '/sixth');
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
