import 'package:flutter/material.dart';
import '../widgets/continue_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.019),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.35,
                  width: screenWidth * 0.76,
                  child: Image.asset('images/Couple-pana 1.png'),
                ),
                SizedBox(
                  height: screenHeight * 0.012,
                ),
                Column(
                  children: [
                    Text(
                      'Find Your',
                      style: TextStyle(
                        fontFamily: 'NunitoExtraBold',
                        fontSize: screenHeight * 0.038,
                      ),
                    ),
                    Text(
                      'Best Partner',
                      style: TextStyle(
                        fontFamily: 'NunitoExtraBold',
                        fontSize: screenHeight * 0.038,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.019,
                ),
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                      width: screenWidth * 0.38,
                      child: Divider(
                        color: Colors.grey[300],
                        thickness: 1.0,
                      ),
                    ),
                    Text(
                      'Login or Sign-Up',
                      style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontSize: screenHeight * 0.015,
                        color: Color.fromRGBO(100, 116, 139, 0.8),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                      width: screenWidth * 0.375,
                      child: Divider(
                        color: Colors.grey[300],
                        thickness: 1.0,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.04,
                            vertical: screenHeight * 0.015),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35)),
                        hintText: 'Enter Mobile Number',
                        hintStyle: TextStyle(
                          color: Color(0xff94A3B8),
                          fontFamily: 'Nunito',
                          fontSize: screenHeight * 0.02,
                        ),
                      ),
                    ),
                  ),
                ),
                ContinueButton(
                  onPress: () {
                    Navigator.pushNamed(context, '/third');
                  },
                ),
                SizedBox(
                  height: screenHeight * 0.025,
                ),
                Row(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                      width: screenWidth * 0.475,
                      child: Divider(
                        color: Colors.grey[300],
                        thickness: 1.0,
                      ),
                    ),
                    const Text(
                      'OR',
                      style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontSize: 12.0,
                        color: Color.fromRGBO(100, 116, 139, 0.8),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                      width: screenWidth * 0.47,
                      child: Divider(
                        color: Colors.grey[300],
                        thickness: 1.0,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/Group 6.png'),
                    const SizedBox(
                      width: 35.0,
                    ),
                    Image.asset('images/Group 5.png'),
                    const SizedBox(
                      width: 35.0,
                    ),
                    Image.asset('images/Group 4.png'),
                  ],
                ),
                const Flexible(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                      'By continuing, you are about to agree to the terms and conditions, privacy policy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff64748B),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
