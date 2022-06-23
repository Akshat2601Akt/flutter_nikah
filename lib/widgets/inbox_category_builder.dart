import 'package:flutter/material.dart';
import 'package:nikah/constants/constants.dart';
import 'package:nikah/widgets/messages_builder.dart';
import 'package:nikah/widgets/profile_cards.dart';

import 'blocked_profile_cards.dart';

class InboxCategory extends StatefulWidget {
  final List<String> inboxCategoryList;

  const InboxCategory({Key? key, required this.inboxCategoryList})
      : super(key: key);
  @override
  _InboxCategoryState createState() => _InboxCategoryState();
}

class _InboxCategoryState extends State<InboxCategory> {
  var selectedChoice = "Messages";
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          SizedBox(
            height: 40.0,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              itemCount: 7,
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ChoiceChip(
                    label: Container(
                      constraints: const BoxConstraints(
                        minWidth: 80.0,
                      ),
                      height: 20.0,
                      alignment: Alignment.center,
                      child: Text(
                        widget.inboxCategoryList[index],
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontFamily: 'NunitoSans',
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0),
                      ),
                    ),
                    backgroundColor: Colors.white,
                    side: const BorderSide(
                      color: Color.fromRGBO(0, 0, 0, 0.05),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0)),
                    selectedColor: primaryColor1,
                    selected: selectedChoice == widget.inboxCategoryList[index],
                    onSelected: (isSelected) {
                      setState(() {
                        selectedChoice = widget.inboxCategoryList[index];
                      });
                    },
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          categorySelector(selectedChoice)
        ],
      ),
    );
  }
}

Widget categorySelector(String choice) {
  switch (choice) {
    case 'Messages':
      return const MessagesBuilder();
    case 'Accepted':
      return Expanded(
        child: GridView.count(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          scrollDirection: Axis.vertical,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 40.0,
          crossAxisCount: 2,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 3.0),
              child: const ProfileCards(),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 3.0),
              child: const ProfileCards(),
            )
          ],
        ),
      );
    case 'Interested':
      return Expanded(
        child: GridView.count(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          scrollDirection: Axis.vertical,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 40.0,
          crossAxisCount: 2,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 3.0),
              child: const ProfileCards(),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 3.0),
              child: const ProfileCards(),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 3.0),
              child: const ProfileCards(),
            )
          ],
        ),
      );
    case 'Pending':
      return Expanded(
        child: GridView.count(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          scrollDirection: Axis.vertical,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 40.0,
          crossAxisCount: 2,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 3.0),
              child: const ProfileCards(),
            )
          ],
        ),
      );
    case 'Consideration':
      return Expanded(
        child: GridView.count(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          scrollDirection: Axis.vertical,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 40.0,
          crossAxisCount: 2,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 3.0),
              child: const ProfileCards(),
            )
          ],
        ),
      );
    case 'Declined':
      return Expanded(
        child: GridView.count(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          scrollDirection: Axis.vertical,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 40.0,
          crossAxisCount: 2,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 3.0),
              child: const ProfileCards(),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 3.0),
              child: const ProfileCards(),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 3.0),
              child: const ProfileCards(),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 3.0),
              child: const ProfileCards(),
            ),
          ],
        ),
      );
    case 'Blocked':
      return Flexible(
        child: GridView.count(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          scrollDirection: Axis.vertical,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 40.0,
          crossAxisCount: 2,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 3.0),
              child: const BlockedProfileCards(),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 3.0),
              child: const BlockedProfileCards(),
            )
          ],
        ),
      );
    default:
      return const Text('Returning Default');
  }
}
