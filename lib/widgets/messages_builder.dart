import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nikah/constants/constants.dart';

enum Messages { Received, Sent }

class MessagesBuilder extends StatefulWidget {
  const MessagesBuilder({Key? key}) : super(key: key);

  @override
  _MessagesBuilderState createState() => _MessagesBuilderState();
}

class _MessagesBuilderState extends State<MessagesBuilder> {
  Messages selectedMessageType = Messages.Sent;
  final List<String> userName = ['John', 'Rohit'];
  final List<int> userMessageNumber = [4, 1];
  final List<String> userMessageText = [
    'The lorem ipsum is a placeholder',
    'The lorem ipsum is a placeholder'
  ];
  final List<String> userMessageTime = ['4:52 pm', '4:52 pm'];
  final List<String> userImageURL = [
    'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800',
    'https://images.unsplash.com/photo-1607081692251-d689f1b9af84?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGluZGlhbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedMessageType = Messages.Received;
                });
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  children: [
                    Text(
                      'Received',
                      style: TextStyle(
                          fontFamily: 'NunitoSans',
                          fontWeight: selectedMessageType == Messages.Received
                              ? FontWeight.w800
                              : FontWeight.w600,
                          fontSize: 14.0,
                          color: selectedMessageType == Messages.Received
                              ? primaryColor1
                              : Colors.black),
                    ),
                    Divider(
                      indent: 13.0,
                      thickness:
                          selectedMessageType == Messages.Received ? 5.0 : 3.0,
                      color: selectedMessageType == Messages.Received
                          ? primaryColor1
                          : const Color(0xffE3E3E3),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedMessageType = Messages.Sent;
                });
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  children: [
                    Text(
                      'Sent',
                      style: TextStyle(
                          fontFamily: 'NunitoSans',
                          fontWeight: selectedMessageType == Messages.Sent
                              ? FontWeight.w800
                              : FontWeight.w600,
                          fontSize: 14.0,
                          color: selectedMessageType == Messages.Sent
                              ? primaryColor1
                              : Colors.black),
                    ),
                    Divider(
                      endIndent: 13.0,
                      thickness:
                          selectedMessageType == Messages.Sent ? 5.0 : 3.0,
                      color: selectedMessageType == Messages.Sent
                          ? primaryColor1
                          : const Color(0xffE3E3E3),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 25.0,
        ),
        ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 65.0,
              margin: const EdgeInsets.symmetric(vertical: 5.0),
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(userImageURL[index])),
                  const SizedBox(width: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              userName[index],
                              style: const TextStyle(
                                  fontFamily: 'NunitoSans',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                            Text(
                              userMessageTime[index],
                              style: const TextStyle(
                                  fontFamily: 'NunitoSans',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10,
                                  color: Color(0xff9D9D9D)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              userMessageText[index],
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontFamily: 'NunitoSans',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff9D9D9D),
                              ),
                            ),
                            CircleAvatar(
                              radius: 8.0,
                              backgroundColor: userMessageNumber[index] > 1
                                  ? primaryColor1
                                  : Colors.white,
                              child: Text(
                                userMessageNumber[index].toString(),
                                style: const TextStyle(
                                    fontFamily: 'NunitoSans',
                                    fontSize: 8.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        const Divider(
                          thickness: 1.0,
                          color: Color(0xffE3E3E3),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
