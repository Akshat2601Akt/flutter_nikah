import 'package:flutter/material.dart';
import '../widgets/continue_button.dart';
import '../widgets/dropdown_currency_selector.dart';
import '../widgets/dropdown_selector.dart';

class QualificationScreen extends StatefulWidget {
  const QualificationScreen({Key? key}) : super(key: key);

  @override
  _QualificationScreenState createState() => _QualificationScreenState();
}

class _QualificationScreenState extends State<QualificationScreen> {
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
                'About your Qualification',
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
              const DropDownSelector('Highest Qualification', [], 'Select'),
              const SizedBox(
                height: 31.0,
              ),
              const DropDownSelector('Employee In', [], 'Select'),
              const SizedBox(
                height: 31.0,
              ),
              const DropDownSelector('Occupation', [], 'Select'),
              const SizedBox(
                height: 31.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Flexible(
                      child: DropDownCurrencySelector(
                          'Income', ["Indian INR"], "Indian INR")),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Flexible(
                    child: Container(
                      constraints: const BoxConstraints(
                        maxWidth: 100.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 2.0,
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                          )
                        ],
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        style: const TextStyle(
                          fontFamily: 'NunitoSans',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                            hintText: 'Annual',
                            hintStyle: const TextStyle(
                              fontFamily: 'NunitoSans',
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0,
                              color: Color(0xff94A3B8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                )),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 9.0, vertical: 8.0)),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Flexible(
                    child: Container(
                      constraints: const BoxConstraints(
                        maxWidth: 100.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 2.0,
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                          )
                        ],
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        style: const TextStyle(
                          fontFamily: 'NunitoSans',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                            hintText: 'Monthly',
                            hintStyle: const TextStyle(
                              fontFamily: 'NunitoSans',
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0,
                              color: Color(0xff94A3B8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade300),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                )),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 9.0, vertical: 8.0)),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 31.0,
              ),
              const DropDownSelector('Family status', [], 'Select'),
              const SizedBox(
                height: 44.0,
              ),
              ContinueButton(
                onPress: () {
                  Navigator.pushNamed(context, '/eighth');
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
