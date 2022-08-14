import 'package:flutter/material.dart';

class ButtonModel {
  ButtonModel(
    this.textColor,
    this.text,
    this.fillColor,
    this.textSize,
  );
  final String text;
  final Color fillColor;
  final double textSize;
  final Color textColor;
}

class ButtonList {
  List<ButtonModel> buttonList = [
    ButtonModel(
      Colors.black,
      "AC",
      Colors.grey.shade400,
      40,
    ),
    ButtonModel(
      Colors.black,
      "C",
      Colors.grey.shade400,
      40,
    ),
    ButtonModel(
      Colors.black,
      "BACK",
      Colors.grey.shade400,
      30,
    ),
    ButtonModel(
      Colors.black,
      "/",
      Colors.grey.shade400,
      40,
    ),
    ButtonModel(
      Color.fromARGB(255, 139, 19, 19),
      "9",
      Colors.grey.shade700,
      40,
    ),
    ButtonModel(
      Color.fromARGB(255, 139, 19, 19),
      "8",
      Colors.grey.shade700,
      40,
    ),
    ButtonModel(
      Color.fromARGB(255, 139, 19, 19),
      "7",
      Colors.grey.shade700,
      40,
    ),
    ButtonModel(
      Colors.black,
      "X",
      Colors.grey.shade400,
      40,
    ),
    ButtonModel(
      Color.fromARGB(255, 139, 19, 19),
      "6",
      Colors.grey.shade700,
      40,
    ),
    ButtonModel(
      Color.fromARGB(255, 139, 19, 19),
      "5",
      Colors.grey.shade700,
      40,
    ),
    ButtonModel(
      Color.fromARGB(255, 139, 19, 19),
      "4",
      Colors.grey.shade700,
      40,
    ),
    ButtonModel(
      Colors.black,
      "-",
      Colors.grey.shade400,
      40,
    ),
    ButtonModel(
      Color.fromARGB(255, 139, 19, 19),
      "3",
      Colors.grey.shade700,
      40,
    ),
    ButtonModel(
      Color.fromARGB(255, 139, 19, 19),
      "2",
      Colors.grey.shade700,
      40,
    ),
    ButtonModel(
      Color.fromARGB(255, 139, 19, 19),
      "1",
      Colors.grey.shade700,
      40,
    ),
    ButtonModel(
      Colors.black,
      "+",
      Colors.grey.shade400,
      40,
    ),
    ButtonModel(
      Colors.white,
      "EVIL",
      Color.fromARGB(255, 139, 19, 19),
      30,
    ),
    ButtonModel(
      Color.fromARGB(255, 139, 19, 19),
      "0",
      Colors.grey.shade700,
      40,
    ),
    ButtonModel(
      Color.fromARGB(255, 139, 19, 19),
      ".",
      Colors.grey.shade700,
      40,
    ),
    ButtonModel(
      Colors.white,
      "=",
      Colors.grey.shade800,
      40,
    ),
  ];
}
