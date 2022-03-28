import 'package:flutter/material.dart';

import '../constant/constans_page.dart';

class BuildTexfieldWidget extends StatelessWidget {
  const BuildTexfieldWidget({
    required this.name,
    required this.controller,
    Key? key,
  }) : super(key: key);

  final String name;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: textFieldColor,
        hintText: name,
        hintStyle: TextStyle(color: textColordark),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: textColordark),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: textColordark),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
