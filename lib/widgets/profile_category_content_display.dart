// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CategoryContentDisplay extends StatelessWidget {
  final String categoryName;
  final String categoryContent;

  const CategoryContentDisplay(
      {required this.categoryName, required this.categoryContent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            constraints: BoxConstraints(
              minWidth: 160.0,
            ),
            child: Text(
              categoryName,
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: Color(0xff94A3B8),
              ),
            ),
          ),
          Text(
            ': ',
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          Flexible(
            child: Text(
              categoryContent,
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
