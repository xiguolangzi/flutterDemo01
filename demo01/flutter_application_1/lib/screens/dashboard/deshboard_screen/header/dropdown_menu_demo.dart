import 'package:flutter/material.dart';

import '../../../../constants.dart';

class DropdownMenoDemo extends StatefulWidget {
  const DropdownMenoDemo({super.key});

  @override
  State<DropdownMenoDemo> createState() => _DropdownMenoDemoState();
}

class _DropdownMenoDemoState extends State<DropdownMenoDemo> {
  String selectedOption = "Ángel Santiago";

  List<String> options = [
    "Ángel Santiago",
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
      child: DropdownButton<String>(
        value: selectedOption,
        onChanged: (newValue) {
          setState(() {
            selectedOption = newValue!;
          });
        },
        items: options.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
