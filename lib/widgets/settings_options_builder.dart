import 'package:flutter/material.dart';
import 'package:nikah/constants/constants.dart';

class OptionsBuilder extends StatefulWidget {
  final String labelText;
  final List<String> optionsList;

  const OptionsBuilder(
      {Key? key, required this.optionsList, required this.labelText})
      : super(key: key);

  @override
  _OptionsBuilderState createState() => _OptionsBuilderState();
}

class _OptionsBuilderState extends State<OptionsBuilder> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          style: const TextStyle(
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
              fontSize: 14.0,
              color: Color(0xffB1B1B3)),
        ),
        Wrap(
          spacing: 6,
          direction: Axis.horizontal,
          children: buildOptions(),
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
  }

  List<Widget> buildOptions() {
    List<Widget> chips = [];
    for (int i = 0; i < widget.optionsList.length; i++) {
      Widget item = Padding(
        padding: const EdgeInsets.only(right: 5),
        child: ChoiceChip(
          label: Text(widget.optionsList[i]),
          labelStyle: const TextStyle(
            fontFamily: 'SourceSansPro',
            fontWeight: FontWeight.w400,
            fontSize: 14.0,
          ),
          side: const BorderSide(
            color: Color.fromRGBO(0, 0, 0, 0.05),
          ),
          backgroundColor: Colors.white,
          selectedColor: const Color.fromRGBO(136, 5, 255, 0.36),
          selected: selectedIndex == i,
          onSelected: (bool value) {
            setState(() {
              selectedIndex = i;
            });
          },
        ),
      );
      chips.add(item);
    }
    return chips;
  }
}
