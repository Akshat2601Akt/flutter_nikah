import 'package:flutter/material.dart';

class ProfileCards extends StatefulWidget {
  const ProfileCards({Key? key}) : super(key: key);

  @override
  _ProfileCardsState createState() => _ProfileCardsState();
}

class _ProfileCardsState extends State<ProfileCards> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.pushNamed(context, '/tenth');
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        height: 135.0,
        width: 140.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.0),
          boxShadow: const [
            BoxShadow(
              blurRadius: 3.0,
              spreadRadius: 0.002,
              color: Color.fromRGBO(0, 0, 0, 0.25),
            )
          ],
        ),
        child: Column(
          children: const [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(6.0),
                topLeft: Radius.circular(6.0),
              ),
              child: Image(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBvcnRyYWl0JTIwbWFsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
                ),
                width: double.infinity,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                'A Soni, 28',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Chandigarh & Shimla',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.w400,
                  fontSize: 12.0,
                  color: Color(0xffB1B1B3),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
