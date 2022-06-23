import 'package:flutter/material.dart';
import 'package:nikah/widgets/content_cards.dart';
import 'package:nikah/widgets/profile_category_content_display.dart';

import '../widgets/custom_bottom_bar.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          ListView(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: screenHeight * 0.42,
                        width: screenWidth * 0.938,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0)),
                        child: const Card(
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * 0.023,
                    left: screenWidth * 0.056,
                    child: Center(
                      child: Container(
                        height: screenHeight * 0.044,
                        width: screenWidth * 0.097,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: const Color.fromRGBO(0, 0, 0, 0.6),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 255.0,
                    left: 22.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Tamara,',
                              style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              ' 25',
                              style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              '4\'7"',
                              style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                '•',
                                style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              'Kathua & Basholi',
                              style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                '•',
                                style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              'Scheduled Caste',
                              style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              ContentCards(
                childWidget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'About Myself',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'NunitoExtraBold',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ContentCards(
                childWidget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Personal Appearance',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'NunitoExtraBold',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      CategoryContentDisplay(
                          categoryName: 'Height', categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Complexion',
                          categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Body Type', categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Second Language',
                          categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Third language',
                          categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Any Disablity',
                          categoryContent: 'Loreum'),
                      SizedBox(
                        height: 20.0,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ContentCards(
                childWidget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Educational Information',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'NunitoExtraBold',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      CategoryContentDisplay(
                          categoryName: 'Highest Education',
                          categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Detailed Qualification',
                          categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Working Sector',
                          categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Occupation',
                          categoryContent: 'Loreum'),
                      SizedBox(
                        height: 20.0,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ContentCards(
                childWidget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Religious Interest / Information',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'NunitoExtraBold',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      CategoryContentDisplay(
                          categoryName: 'Math’hab Followed',
                          categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Sub Caste', categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Religious Interest',
                          categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Born or Reverted',
                          categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Prayer', categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Read Quran',
                          categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Zakat', categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Umrah/Hajj',
                          categoryContent: 'Loreum'),
                      SizedBox(
                        height: 20.0,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ContentCards(
                childWidget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Habitual Details',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'NunitoExtraBold',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      CategoryContentDisplay(
                          categoryName: 'Food', categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Smoking', categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Drinking', categoryContent: 'Loreum'),
                      SizedBox(
                        height: 20.0,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ContentCards(
                childWidget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Family Details',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'NunitoExtraBold',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      CategoryContentDisplay(
                          categoryName: 'Loreum', categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Loreum', categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Loreum', categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Loreum', categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Loreum', categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Loreum', categoryContent: 'Loreum'),
                      SizedBox(
                        height: 20.0,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ContentCards(
                childWidget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'About my Partner',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'NunitoExtraBold',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ContentCards(
                childWidget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Nationality & Residing Country',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'NunitoExtraBold',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      CategoryContentDisplay(
                          categoryName: 'Loreum', categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Loreum', categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Loreum', categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Loreum', categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Loreum', categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Loreum', categoryContent: 'Loreum'),
                      SizedBox(
                        height: 20.0,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ContentCards(
                childWidget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Partner Perferences',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'NunitoExtraBold',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      CategoryContentDisplay(
                          categoryName: 'Loreum', categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Loreum', categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Loreum', categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Loreum', categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Loreum', categoryContent: 'Loreum'),
                      CategoryContentDisplay(
                          categoryName: 'Loreum', categoryContent: 'Loreum'),
                      SizedBox(
                        height: 20.0,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 120.0,
              ),
            ],
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
