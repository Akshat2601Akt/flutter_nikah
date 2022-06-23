import 'package:flutter/material.dart';
import 'package:nikah/widgets/content_cards.dart';

import '../widgets/profile_category_content_display.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  _MyProfileScreenState createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
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
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          'My Profile',
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
                height: 30.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                        blurRadius: 8.0,
                        spreadRadius: 0.002,
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                      ),
                    ]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
                        height: 100.0,
                        width: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Tamara (AS8604622)',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.w600,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Basic Details',
                          style: TextStyle(
                              fontFamily: 'NunitoSans',
                              fontWeight: FontWeight.w800,
                              fontSize: 14.0),
                        ),
                        GestureDetector(
                          child: Image.asset('images/arrow 2.png'),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ContentCards(
                    childWidget: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        CategoryContentDisplay(
                            categoryName: 'Posted by', categoryContent: 'Self'),
                        CategoryContentDisplay(
                            categoryName: 'Age', categoryContent: '21'),
                        CategoryContentDisplay(
                            categoryName: 'Marital Status',
                            categoryContent: 'Never Married'),
                        CategoryContentDisplay(
                            categoryName: 'Height',
                            categoryContent: '5’4” (162cm)'),
                        CategoryContentDisplay(
                            categoryName: 'Any Disability',
                            categoryContent: 'None'),
                        CategoryContentDisplay(
                            categoryName: 'Health Information',
                            categoryContent: 'None'),
                        SizedBox(
                          height: 10.0,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'About Me',
                          style: TextStyle(
                              fontFamily: 'NunitoSans',
                              fontWeight: FontWeight.w800,
                              fontSize: 14.0),
                        ),
                        GestureDetector(
                          child: Image.asset('images/arrow 2.png'),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ContentCards(
                    childWidget: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Religious Background',
                          style: TextStyle(
                              fontFamily: 'NunitoSans',
                              fontWeight: FontWeight.w800,
                              fontSize: 14.0),
                        ),
                        GestureDetector(
                          child: Image.asset('images/arrow 2.png'),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ContentCards(
                    childWidget: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        CategoryContentDisplay(
                            categoryName: 'Posted by', categoryContent: 'Self'),
                        CategoryContentDisplay(
                            categoryName: 'Age', categoryContent: '21'),
                        CategoryContentDisplay(
                            categoryName: 'Marital Status',
                            categoryContent: 'Never Married'),
                        CategoryContentDisplay(
                            categoryName: 'Height',
                            categoryContent: '5’4” (162cm)'),
                        CategoryContentDisplay(
                            categoryName: 'Any Disability',
                            categoryContent: 'None'),
                        CategoryContentDisplay(
                            categoryName: 'Health Information',
                            categoryContent: 'None'),
                        SizedBox(
                          height: 10.0,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Family',
                          style: TextStyle(
                              fontFamily: 'NunitoSans',
                              fontWeight: FontWeight.w800,
                              fontSize: 14.0),
                        ),
                        GestureDetector(
                          child: Image.asset('images/arrow 2.png'),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ContentCards(
                    childWidget: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        CategoryContentDisplay(
                            categoryName: 'Posted by', categoryContent: 'Self'),
                        CategoryContentDisplay(
                            categoryName: 'Age', categoryContent: '21'),
                        CategoryContentDisplay(
                            categoryName: 'Marital Status',
                            categoryContent: 'Never Married'),
                        CategoryContentDisplay(
                            categoryName: 'Height',
                            categoryContent: '5’4” (162cm)'),
                        CategoryContentDisplay(
                            categoryName: 'Any Disability',
                            categoryContent: 'None'),
                        CategoryContentDisplay(
                            categoryName: 'Health Information',
                            categoryContent: 'None'),
                        SizedBox(
                          height: 10.0,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Location, Education & Career',
                          style: TextStyle(
                              fontFamily: 'NunitoSans',
                              fontWeight: FontWeight.w800,
                              fontSize: 14.0),
                        ),
                        GestureDetector(
                          child: Image.asset('images/arrow 2.png'),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ContentCards(
                    childWidget: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        CategoryContentDisplay(
                            categoryName: 'Posted by', categoryContent: 'Self'),
                        CategoryContentDisplay(
                            categoryName: 'Age', categoryContent: '21'),
                        CategoryContentDisplay(
                            categoryName: 'Marital Status',
                            categoryContent: 'Never Married'),
                        CategoryContentDisplay(
                            categoryName: 'Height',
                            categoryContent: '5’4” (162cm)'),
                        CategoryContentDisplay(
                            categoryName: 'Any Disability',
                            categoryContent: 'None'),
                        CategoryContentDisplay(
                            categoryName: 'Health Information',
                            categoryContent: 'None'),
                        SizedBox(
                          height: 10.0,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Lifestyle',
                          style: TextStyle(
                              fontFamily: 'NunitoSans',
                              fontWeight: FontWeight.w800,
                              fontSize: 14.0),
                        ),
                        GestureDetector(
                          child: Image.asset('images/arrow 2.png'),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ContentCards(
                    childWidget: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        CategoryContentDisplay(
                            categoryName: 'Posted by', categoryContent: 'Self'),
                        SizedBox(
                          height: 10.0,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50.0,
              )
            ]),
      ),
    );
  }
}
