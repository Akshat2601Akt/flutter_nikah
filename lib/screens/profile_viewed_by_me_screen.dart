import 'package:flutter/material.dart';
import '../widgets/custom_bottom_bar.dart';
import '../widgets/profile_cards.dart';

class ProfileViewedByMeScreen extends StatefulWidget {
  const ProfileViewedByMeScreen({Key? key}) : super(key: key);

  @override
  _ProfileViewedByMeScreenState createState() =>
      _ProfileViewedByMeScreenState();
}

class _ProfileViewedByMeScreenState extends State<ProfileViewedByMeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
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
                                  Navigator.pushNamed(context, '/tenth');
                                },
                                icon: const Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.black,
                                ),
                              ),
                              const Text(
                                'Profile Viewed By Me',
                                style: TextStyle(
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.0),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
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
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Flexible(
                  child: GridView.count(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    scrollDirection: Axis.vertical,
                    mainAxisSpacing: screenHeight * 0.025,
                    crossAxisSpacing: screenWidth * 0.1,
                    crossAxisCount: 2,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 3.0),
                        child: ProfileCards(),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 3.0),
                        child: ProfileCards(),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 3.0),
                        child: ProfileCards(),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 3.0),
                        child: ProfileCards(),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 3.0),
                        child: ProfileCards(),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 3.0),
                        child: ProfileCards(),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 3.0),
                        child: ProfileCards(),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 3.0),
                        child: ProfileCards(),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 3.0),
                        child: ProfileCards(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Positioned(
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
