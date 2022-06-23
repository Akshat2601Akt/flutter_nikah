// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nikah/constants/constants.dart';
import '../widgets/profile_cards.dart';

class HomePageSection extends StatelessWidget {
  final String sectionName;

  HomePageSection(this.sectionName);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  sectionName,
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0,
                    color: primaryColor2,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Container(
            height: 160.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 3.0),
                    child: ProfileCards(),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
