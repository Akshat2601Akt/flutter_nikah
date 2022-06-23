import 'package:flutter/material.dart';
import '../constants/constants.dart';

class BlockedProfileCards extends StatefulWidget {
  const BlockedProfileCards({Key? key}) : super(key: key);

  @override
  _BlockedProfileCardsState createState() => _BlockedProfileCardsState();
}

class _BlockedProfileCardsState extends State<BlockedProfileCards> {
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
        constraints: BoxConstraints(minHeight: 320.0),
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
          children: [
            const ClipRRect(
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
            const Padding(
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
              padding: const EdgeInsets.only(bottom: 8.0),
              child: const Text(
                'Chandigarh & Shimla',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.w400,
                  fontSize: 12.0,
                  color: Color(0xffB1B1B3),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 25.0,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: primaryColor1,
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: null,
                    child: const Text(
                      'Unblock',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
