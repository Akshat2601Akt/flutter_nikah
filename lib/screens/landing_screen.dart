import 'package:flutter/material.dart';
import 'package:nikah/constants/constants.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.11),
            child: Column(
              children: [
                Image.asset('images/image 1.png',
                    height: screenHeight * 0.35, width: screenWidth * 0.5),
                SizedBox(
                  height: screenHeight * 0.075,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Find Your ',
                          style: TextStyle(
                            fontFamily: 'NunitoExtraBold',
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          'Partner',
                          style: TextStyle(
                            fontFamily: 'NunitoExtraBold',
                            fontSize: 30,
                            color: primaryColor1,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'With Us',
                      style: TextStyle(
                        fontFamily: 'NunitoExtraBold',
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
                  'Join us and socialize with',
                  style: TextStyle(
                    fontFamily: 'NunitoSans',
                    fontSize: 14.0,
                  ),
                ),
                const Text(
                  'millions of people',
                  style: TextStyle(
                    fontFamily: 'NunitoSans',
                    fontSize: 14.0,
                  ),
                ),
                const SizedBox(
                  height: 43.0,
                ),
                Container(
                  height: screenHeight * 0.07,
                  width: screenWidth * 0.46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 10.0,
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                      )
                    ],
                    color: primaryColor1,
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/second');
                      },
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 8.0,
                      width: 24.0,
                      decoration: BoxDecoration(
                          color: primaryColor1,
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    const SizedBox(
                      width: 7.0,
                    ),
                    Container(
                      height: 8.0,
                      width: 8.0,
                      decoration: BoxDecoration(
                          color: const Color(0xffE5E5E5),
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    const SizedBox(
                      width: 7.0,
                    ),
                    Container(
                      height: 8.0,
                      width: 8.0,
                      decoration: BoxDecoration(
                          color: const Color(0xffE5E5E5),
                          borderRadius: BorderRadius.circular(10.0)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
