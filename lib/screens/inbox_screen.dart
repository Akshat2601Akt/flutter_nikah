// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:nikah/widgets/inbox_category_builder.dart';
import '../widgets/custom_bottom_bar.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  _InboxScreenState createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  Color colour = Colors.white;
  List<String> inboxCategoryList = [
    'Messages',
    'Accepted',
    'Interested',
    'Pending',
    'Consideration',
    'Declined',
    'Blocked'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/ninth');
                                },
                                icon: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Inbox',
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.0),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: null,
                                icon: Icon(
                                  Icons.search_rounded,
                                  color: Color(0xffCCCCCC),
                                ),
                              ),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60'),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                InboxCategory(inboxCategoryList: inboxCategoryList)
              ],
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: CustomBottomBar(),
          )
        ]),
      ),
    );
  }
}
