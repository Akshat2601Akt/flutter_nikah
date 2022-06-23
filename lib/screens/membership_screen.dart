import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nikah/carousel_items/item1.dart';
import 'package:nikah/carousel_items/item2.dart';
import 'package:nikah/carousel_items/item3.dart';
import 'package:nikah/constants/constants.dart';
import 'package:nikah/widgets/content_cards.dart';
import '../widgets/custom_bottom_bar.dart';

enum Premium { royal, luxury, ultimate }

class MembershipScreen extends StatefulWidget {
  const MembershipScreen({Key? key}) : super(key: key);

  @override
  _MembershipScreenState createState() => _MembershipScreenState();
}

class _MembershipScreenState extends State<MembershipScreen> {
  final CarouselController _controller = CarouselController();
  Premium selectedPremium = Premium.royal;
  int _currentIndex = 0;
  List cardList = [
    const Item1(),
    const Item2(),
    const Item3(),
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(children: [
          ListView(scrollDirection: Axis.vertical, shrinkWrap: true, children: [
            Stack(children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      height: screenHeight * 0.48,
                      color: primaryColor1,
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 30.0),
                              alignment: Alignment.center,
                              child: const Text(
                                'Upgrade to Premium',
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 230.0,
                              width: 260.0,
                              child: Image.asset(
                                  'images/Indian wedding-amico 1.png'),
                            ),
                            const SizedBox(
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
                                    height: screenHeight * 0.027,
                                    width: screenWidth * 0.25,
                                    decoration: BoxDecoration(
                                      color: selectedPremium == Premium.royal
                                          ? activeBoxColor
                                          : inactiveBoxColor,
                                      border: Border.all(
                                          color:
                                              selectedPremium == Premium.royal
                                                  ? Colors.white
                                                  : Colors.black),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Royal',
                                        style: TextStyle(
                                            fontFamily: 'NunitoSans',
                                            fontSize: 12,
                                            color:
                                                selectedPremium == Premium.royal
                                                    ? primaryColor2
                                                    : Colors.black),
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
                                    height: screenHeight * 0.027,
                                    width: screenWidth * 0.25,
                                    decoration: BoxDecoration(
                                      color: selectedPremium == Premium.luxury
                                          ? activeBoxColor
                                          : inactiveBoxColor,
                                      border: Border.all(
                                          color:
                                              selectedPremium == Premium.luxury
                                                  ? Colors.white
                                                  : Colors.black),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Luxury',
                                        style: TextStyle(
                                            fontFamily: 'NunitoSans',
                                            fontSize: 12,
                                            color: selectedPremium ==
                                                    Premium.luxury
                                                ? primaryColor2
                                                : Colors.black),
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
                                    height: screenHeight * 0.027,
                                    width: screenWidth * 0.25,
                                    decoration: BoxDecoration(
                                      color: selectedPremium == Premium.ultimate
                                          ? activeBoxColor
                                          : inactiveBoxColor,
                                      border: Border.all(
                                          color: selectedPremium ==
                                                  Premium.ultimate
                                              ? Colors.white
                                              : Colors.black),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Ultimate',
                                        style: TextStyle(
                                            fontFamily: 'NunitoSans',
                                            fontSize: 12,
                                            color: selectedPremium ==
                                                    Premium.ultimate
                                                ? primaryColor2
                                                : Colors.black),
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
                    Container(
                      height: screenHeight * 0.7,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Positioned(
                left: 0.0,
                right: 0.0,
                top: screenWidth * 0.86,
                child: Column(
                  children: [
                    CarouselSlider(
                      carouselController: _controller,
                      options: CarouselOptions(
                        onScrolled: null,
                        pageSnapping: true,
                        scrollPhysics: const NeverScrollableScrollPhysics(),
                        height: 300.0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                      items: cardList.map((card) {
                        return Builder(builder: (BuildContext context) {
                          return Container(
                            margin: const EdgeInsets.symmetric(vertical: 2.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 3.0,
                                  spreadRadius: 0.5,
                                  color: Color.fromRGBO(0, 0, 0, 0.1),
                                )
                              ],
                            ),
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Card(
                              child: card,
                            ),
                          );
                        });
                      }).toList(),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ContentCards(
                      childWidget: SizedBox(
                        height: 180.0,
                        width: screenWidth * 0.97,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Text(
                              'Match Guarantee',
                              style: TextStyle(
                                color: primaryColor1,
                                fontSize: 23.0,
                                fontFamily: 'NunitoSans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Image.asset('images/image 3.png'),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Text(
                              'Money Back Guarantee',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'NunitoSans',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.2,
                    )
                  ],
                ),
              ),
              Positioned(
                top: 15.0,
                left: 0.0,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_rounded),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ]),
          ]),
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
