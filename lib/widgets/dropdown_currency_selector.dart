// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nikah/constants/constants.dart';

// ignore: must_be_immutable
class DropDownCurrencySelector extends StatefulWidget {
  final String label;
  final List<String> listItems;
  final String? selectedItem;
  const DropDownCurrencySelector(@required this.label, @required this.listItems,
      @required this.selectedItem,
      {Key? key})
      : super(key: key);

  @override
  _DropDownCurrencySelectorState createState() =>
      _DropDownCurrencySelectorState();
}

class _DropDownCurrencySelectorState extends State<DropDownCurrencySelector> {
  String selectedItems = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedItems = widget.selectedItem!;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.label,
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 12.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 0.1,
                  blurRadius: 4.0,
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                )
              ],
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 6.0),
              child: DropdownButton<String>(
                  value: selectedItems,
                  isExpanded: true,
                  iconSize: 36,
                  disabledHint: Text(
                    'Select',
                    style: TextStyle(
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.w400,
                      fontSize: 12.0,
                      color: primaryColor1,
                    ),
                  ),
                  dropdownColor: Colors.white,
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 20.0,
                    color: Colors.grey[500],
                  ),
                  items: widget.listItems.map<DropdownMenuItem<String>>(
                    (String incomingText) {
                      return DropdownMenuItem<String>(
                        value: incomingText,
                        child: Text(
                          incomingText,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              color: primaryColor1,
                              fontSize: 12.0),
                        ),
                      );
                    },
                  ).toList(),
                  onChanged: (String? newValue) => setState(() {
                        selectedItems = newValue!;
                      })),
            ),
          ),
        ),
      ],
    );
  }
}
