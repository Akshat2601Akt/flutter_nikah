// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// ignore: avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';
import 'package:nikah/widgets/content_cards.dart';

import '../widgets/custom_bottom_bar.dart';

class RecentActivitiesScreen extends StatefulWidget {
  const RecentActivitiesScreen({Key? key}) : super(key: key);

  @override
  _RecentActivitiesScreenState createState() => _RecentActivitiesScreenState();
}

class _RecentActivitiesScreenState extends State<RecentActivitiesScreen> {
  final List<String> userName = ['Mohmaddi', 'Heena'];
  final List<String> userActivity = [
    'Has Logged into her account',
    'Has Logged into her account'
  ];
  final List<String> urlImage = [
    'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDZ8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800',
    'https://images.unsplash.com/photo-1593104547489-5cfb3839a3b5?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
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
                                  'Recent Activities',
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
                  Flexible(
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 15.0),
                            child: ContentCards(
                              childWidget: Container(
                                height: 55.0,
                                margin: EdgeInsets.symmetric(vertical: 10.0),
                                padding: EdgeInsets.only(left: 10.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 25,
                                        backgroundImage:
                                            NetworkImage(urlImage[index])),
                                    SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          userName[index],
                                          style: TextStyle(
                                              fontFamily: 'SourceSansPro',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                          userActivity[index],
                                          style: TextStyle(
                                            fontFamily: 'SourceSansPro',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: CustomBottomBar(),
            )
          ],
        ),
      ),
    );
  }
}
