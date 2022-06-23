import 'package:flutter/material.dart';
import 'package:nikah/constants/constants.dart';
import 'package:nikah/widgets/custom_bottom_bar.dart';
import 'package:nikah/widgets/drawer.dart';
import 'package:nikah/widgets/home_page_sections.dart';

import '../datas/userData.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: NavigationDrawerWidget(),
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 20.0,
                          width: 20.0,
                          child: GestureDetector(
                            child: Image.asset('images/menu_from_left.png'),
                            onTap: () {
                              _scaffoldKey.currentState?.openDrawer();
                            },
                          ),
                        ),
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800'),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Hi, Bride',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 24.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '(AS8604622)',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 24.0,
                          fontWeight: FontWeight.w400,
                          color: primaryColor1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffF9F9FB),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.search_rounded,
                            color: Color(0xffCCCCCC),
                            size: 20.0,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search here...',
                                hintStyle: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffCCCCCC),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  SizedBox(
                    height: screenHeight * 0.11,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: onlineUsers.length,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 12.0),
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: GestureDetector(
                            onTap: null,
                            child: SizedBox(
                              width: screenWidth * 0.125,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      CircleAvatar(
                                        radius: 24.0,
                                        backgroundImage: NetworkImage(
                                            '${onlineUsers[index]['Picture']}'),
                                      ),
                                      const Positioned(
                                        bottom: 0.0,
                                        right: 4.0,
                                        child: Icon(
                                          Icons.circle,
                                          color: Colors.white,
                                          size: 14.0,
                                        ),
                                      ),
                                      const Positioned(
                                        bottom: 1.0,
                                        right: 4.5,
                                        child: Icon(
                                          Icons.circle,
                                          color: Color(0xff2FA84E),
                                          size: 12.0,
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5.0),
                                    child: Text(
                                      '${onlineUsers[index]['Name']}'
                                      ', '
                                      '${onlineUsers[index]['Age']}',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  HomePageSection('Matching Profiles'),
                  const SizedBox(
                    height: 30.0,
                  ),
                  HomePageSection('Recommended'),
                  const SizedBox(
                    height: 30.0,
                  ),
                  HomePageSection('Viewed, Not contacted'),
                  const SizedBox(
                    height: 30.0,
                  ),
                  HomePageSection('Premium Matches'),
                  const SizedBox(
                    height: 80.0,
                  ),
                ],
              ),
            ),
            const Positioned(
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
