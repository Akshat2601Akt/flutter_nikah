import 'package:flutter/material.dart';
import 'package:nikah/constants/constants.dart';
import '../widgets/dropdown_selector.dart';

class PartnerPreferencesScreen extends StatefulWidget {
  const PartnerPreferencesScreen({Key? key}) : super(key: key);

  @override
  _PartnerPreferencesScreenState createState() =>
      _PartnerPreferencesScreenState();
}

class _PartnerPreferencesScreenState extends State<PartnerPreferencesScreen> {
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
                  child: const Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 30,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'Partner Preferences',
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
                'Update based on your profile',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(child: DropDownSelector('Age Range', [], 'Select')),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(child: DropDownSelector('', [], 'Select')),
                ],
              ),
              const SizedBox(
                height: 31.0,
              ),
              const DropDownSelector('Marital Status', [], 'Select'),
              const SizedBox(
                height: 31.0,
              ),
              const DropDownSelector('Math’hab Followed', [], 'Select'),
              const SizedBox(
                height: 31.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(child: DropDownSelector('Height', [], 'Select')),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(child: DropDownSelector('', [], 'Select')),
                ],
              ),
              const SizedBox(
                height: 31.0,
              ),
              const DropDownSelector('Language', [], 'Select'),
              const SizedBox(
                height: 31.0,
              ),
              const DropDownSelector('Family status', [], 'Select'),
              const SizedBox(
                height: 31.0,
              ),
              const DropDownSelector('Education', [], 'Select'),
              const SizedBox(
                height: 10.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 28.0,
                  width: 85.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: primaryColor1,
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: null,
                      child: const Text(
                        'Bachelors',
                        style: TextStyle(
                          fontFamily: 'SourceSansProSemiBold',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 31.0,
              ),
              const DropDownSelector('Disability', [], 'Select'),
              const SizedBox(
                height: 31.0,
              ),
              const DropDownSelector('Nationality', [], 'Select'),
              const SizedBox(
                height: 31.0,
              ),
              const DropDownSelector('Residing Country', [], 'Select'),
              const SizedBox(
                height: 31.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                      child:
                          DropDownSelector('Preferred Cities', [], 'Select')),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(child: DropDownSelector('', [], 'Select')),
                ],
              ),
              const SizedBox(
                height: 44.0,
              ),
              Container(
                height: 55.0,
                width: 355.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: primaryColor1,
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/ninth');
                    },
                    child: const Text(
                      'Save',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
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
