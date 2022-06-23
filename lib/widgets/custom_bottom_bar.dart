import 'package:flutter/material.dart';

String buttonSelected = 'Home';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({Key? key}) : super(key: key);
  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 30.0,
            spreadRadius: 10.0,
            offset: Offset(0.0, 18.0),
            color: Color.fromRGBO(0, 0, 0, 0.25),
          )
        ],
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: SizedBox(
        height: 72.0,
        // width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              child: Image.asset(
                  buttonSelected == 'Home'
                      ? 'icons/Home_filled.png'
                      : 'icons/Home_unfilled.png',
                  height: 20.0),
              onTap: () {
                setState(() {
                  buttonSelected = 'Home';
                });
                Navigator.pushNamed(context, '/ninth');
              },
            ),
            GestureDetector(
              child: Image.asset(
                  buttonSelected == 'Group'
                      ? 'icons/Group_filled.png'
                      : 'icons/Group_unfilled.png',
                  height: 20.0),
              onTap: () {
                setState(() {
                  buttonSelected = 'Group';
                });
                Navigator.pushNamed(context, '/eleventh');
              },
            ),
            GestureDetector(
              child: Image.asset(
                  buttonSelected == 'Inbox'
                      ? 'icons/Inbox_filled.png'
                      : 'icons/Inbox_unfilled.png',
                  height: 20.0),
              onTap: () {
                setState(() {
                  buttonSelected = 'Inbox';
                });
                Navigator.pushNamed(context, '/twelfth');
              },
            ),
            GestureDetector(
              child: Image.asset(
                  buttonSelected == 'Membership'
                      ? 'icons/Membership_filled.png'
                      : 'icons/Membership_unfilled.png',
                  height: 20.0),
              onTap: () {
                setState(() {
                  buttonSelected = 'Membership';
                });
                Navigator.pushNamed(context, '/sixteenth');
              },
            ),
          ],
        ),
      ),
    );
  }
}
