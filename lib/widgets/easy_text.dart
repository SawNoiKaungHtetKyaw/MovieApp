import 'package:flutter/cupertino.dart';
import 'package:movie_app/constants/colors.dart';

import '../constants/demis.dart';

class EasyText extends StatelessWidget {
  String text;
  Color color;
  double fontSize;
  FontWeight fontWeight;
  TextDecoration underLine;

  EasyText(
      {super.key,
      required this.text,
      this.color = kWhite,
      this.fontSize = kFontSize14x,
      this.fontWeight = FontWeight.normal,
      this.underLine = TextDecoration.none});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          decoration: underLine
              ),
    );
  }
}
