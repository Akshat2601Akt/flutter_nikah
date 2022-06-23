// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DropDownSelector extends StatefulWidget {
  final String label;
  final List<String> listItems;
  final String? selectedItem;
  const DropDownSelector(@required this.label, @required this.listItems,
      @required this.selectedItem,
      {Key? key})
      : super(key: key);

  @override
  _DropDownSelectorState createState() => _DropDownSelectorState();
}

class _DropDownSelectorState extends State<DropDownSelector> {
  String selectedItems = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedItems = widget.selectedItem.toString();
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
          padding: const EdgeInsets.all(2.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  blurRadius: 2.0,
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                )
              ],
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10.0),
              child: DropdownButton<String>(
                  value: selectedItems,
                  isExpanded: true,
                  iconSize: 36,
                  disabledHint: Text(
                    'Select',
                    style: TextStyle(
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                      color: Color(0xff94A3B8),
                    ),
                  ),
                  dropdownColor: Colors.white,
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 25.0,
                    color: Colors.grey[500],
                  ),
                  items: widget.listItems.map<DropdownMenuItem<String>>(
                    (String country) {
                      return DropdownMenuItem<String>(
                        value: country,
                        child: Text(
                          country,
                          style:
                              TextStyle(fontFamily: 'Nunito', fontSize: 14.0),
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
