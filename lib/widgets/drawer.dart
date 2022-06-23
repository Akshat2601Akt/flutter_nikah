// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    const userName = 'Ab cha';
    const userID = 'ID - 00000000';
    const urlImage =
        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60';

    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              userName: userName,
              userID: userID,
            ),
            Divider(
              color: Color(0xffE3E3E3),
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Home',
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 33),
                  buildMenuItem(
                    text: 'My Profile',
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 33),
                  buildMenuItem(
                    text: 'Recent Activities',
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 33),
                  buildMenuItem(
                    text: 'Privacy Settings',
                    onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 33),
                  buildMenuItem(
                    text: 'Pay Now',
                    onClicked: () => selectedItem(context, 4),
                  ),
                  const SizedBox(height: 33),
                  buildMenuItem(
                    text: 'Sign Out',
                    onClicked: () => selectedItem(context, 5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String userName,
    required String userID,
  }) =>
      InkWell(
        child: Container(
          padding: padding.add(EdgeInsets.only(top: 40.0, bottom: 20.0)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: TextStyle(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    userID,
                    style: TextStyle(
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff9D9D9D),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    VoidCallback? onClicked,
  }) {
    return GestureDetector(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          text,
          style: TextStyle(
            fontFamily: 'NunitoSans',
            fontWeight: FontWeight.w400,
            fontSize: 16.0,
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_rounded,
          size: 14.0,
        ),
      ]),
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/ninth');
        break;
      case 1:
        Navigator.pushNamed(context, '/fifteenth');
        break;
      case 2:
        Navigator.pushNamed(context, '/thirteenth');
        break;
      case 3:
        Navigator.pushNamed(context, '/fourteenth');
        break;
      case 4:
        Navigator.pushNamed(context, '/sixteenth');
        break;
      case 5:
        Navigator.pushNamed(context, '/second');
        break;
    }
  }
}
