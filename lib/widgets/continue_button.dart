import 'package:flutter/material.dart';
import 'package:nikah/constants/constants.dart';

class ContinueButton extends StatelessWidget {
  final VoidCallback onPress;
  const ContinueButton({required this.onPress});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      width: 355.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: primaryColor1,
      ),
      child: Center(
        child: GestureDetector(
          onTap: onPress,
          child: const Text(
            'Continue',
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
