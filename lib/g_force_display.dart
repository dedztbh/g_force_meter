import 'package:flutter/material.dart';

class GForceDisplay extends StatelessWidget {
  const GForceDisplay(this.data,
      {super.key,
      this.leftText = "",
      this.rightText = "g",
      this.fontSize = 100,
      this.padSign = false});

  final double data;
  final String leftText;
  final String rightText;
  final double fontSize;
  final bool padSign;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, fontSize / 5),
                child: Text(leftText),
              )),
        ),
        Text(
          ((padSign && data >= 0) ? " " : "") + data.toStringAsFixed(1),
          style: TextStyle(fontSize: fontSize),
        ),
        Expanded(
          child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, fontSize / 5),
                child: Text(rightText),
              )),
        ),
      ],
    );
  }
}
