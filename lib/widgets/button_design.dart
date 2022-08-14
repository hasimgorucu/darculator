import 'package:flutter/material.dart';
import '../models/button_model.dart';

class Buttons extends StatelessWidget {
  Buttons({Key? key, required this.model, required this.onpress})
      : super(key: key);
  final ButtonModel model;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      decoration: BoxDecoration(shape: BoxShape.circle, color: model.fillColor),
      child: TextButton(
        child: Text(model.text,
            style: TextStyle(
              color: model.textColor,
              fontSize: model.textSize,
              fontFamily: "Blood",
            )),
        onPressed: () {
          onpress(model.text);
        },
      ),
    );
  }
}
