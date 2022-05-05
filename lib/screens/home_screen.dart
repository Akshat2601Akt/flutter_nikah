// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nikah/carousel_items/item1.dart';
import 'package:nikah/carousel_items/item2.dart';
import 'package:nikah/carousel_items/item3.dart';
import 'package:nikah/constants/constants.dart';

enum Premium { royal, luxury, ultimate }

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselController _controller = CarouselController();
  Premium selectedPremium = Premium.royal;
  int _currentIndex = 0;
  List cardList = [
    Item1(),
    Item2(),
    Item3(),
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: ListView(children: [
            Column(
              children: [
                Container(
                  height: 310.0,
                  color: Color(0xffD4A5FF),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.arrow_back, color: Colors.white),
                              onPressed: () {
                                Navigator.pushNamed(context, '/second');
                              },
                            ),
                            SizedBox(
                              width: 65.0,
                            ),
                            Text(
                              'Upgrade to Premium',
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(),
                        SizedBox(
                          height: 230.0,
                          width: 260.0,
                          child:
                              Image.asset('images/Indian wedding-amico 1.png'),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedPremium = Premium.royal;
                                  _controller.animateToPage(0);
                                });
                              },
                              child: Container(
                                height: 20.0,
                                width: 100.0,
                                decoration: BoxDecoration(
                                  color: selectedPremium == Premium.royal
                                      ? activeBoxColor
                                      : inactiveBoxColor,
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'Royal',
                                    style: TextStyle(
                                        fontFamily: 'NunitoSans',
                                        fontSize: 12,
                                        color: selectedPremium == Premium.royal
                                            ? activeFontColor
                                            : inactiveFontColor),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedPremium = Premium.luxury;
                                  _controller.animateToPage(1);
                                });
                              },
                              child: Container(
                                height: 20.0,
                                width: 100.0,
                                decoration: BoxDecoration(
                                  color: selectedPremium == Premium.luxury
                                      ? activeBoxColor
                                      : inactiveBoxColor,
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'Luxury',
                                    style: TextStyle(
                                        fontFamily: 'NunitoSans',
                                        fontSize: 12,
                                        color: selectedPremium == Premium.luxury
                                            ? activeFontColor
                                            : inactiveFontColor),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedPremium = Premium.ultimate;
                                  _controller.animateToPage(2);
                                });
                              },
                              child: Container(
                                height: 20.0,
                                width: 100.0,
                                decoration: BoxDecoration(
                                  color: selectedPremium == Premium.ultimate
                                      ? activeBoxColor
                                      : inactiveBoxColor,
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'Ultimate',
                                    style: TextStyle(
                                        fontFamily: 'NunitoSans',
                                        fontSize: 12,
                                        color:
                                            selectedPremium == Premium.ultimate
                                                ? activeFontColor
                                                : inactiveFontColor),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                    height: 300.0,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ),
                  items: cardList.map((card) {
                    return Builder(builder: (BuildContext context) {
                      return Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10.0,
                              spreadRadius: 0.002,
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                            )
                          ],
                        ),
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Card(
                          child: card,
                        ),
                      );
                    });
                  }).toList(),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 141.0,
                  child: Container(
                    height: 141.0,
                    width: 360.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10.0,
                            spreadRadius: 0.002,
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                          ),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Match Guarantee',
                          style: TextStyle(
                            color: Color(0xffD4A5FF),
                            fontSize: 23.0,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image.asset('images/image 3.png')
                      ],
                    ),
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
