import 'dart:ui';

import 'package:flutter/material.dart';

import '../color/colors.dart';

TextStyle tittleText(
    {Color textColor = titleColor, FontWeight fontWeight = FontWeight.w600}) {
  return TextStyle(
    fontFamily: 'CustomFonts',
    fontSize: 16,
    color: textColor,
    fontWeight: fontWeight,
  );
}

TextStyle hintText(
    {Color textColor = hintsColor, FontWeight fontWeight = FontWeight.w500}) {
  return TextStyle(
    fontSize: 14, // Change font size
    fontWeight: fontWeight, // Make it medium bold
    color: textColor, // Change hint text color
    fontStyle: FontStyle.normal, // Make it italic
  );
}

TextStyle checkBoxText(
    {Color textColor = hintsColor, FontWeight fontWeight = FontWeight.w500}) {
  return TextStyle(
    fontSize: 12, // Change font size
    fontWeight: fontWeight, // Make it medium bold
    color: textColor, // Change hint text color
    fontStyle: FontStyle.normal, // Make it italic
  );
}
inputText(
    {Color textColor = primaryTextColor, FontWeight fontWeight = FontWeight.w500}) {
  return TextStyle(
    fontSize: 14, // Change font size
    fontWeight: fontWeight, // Make it medium bold
    color: textColor, // Change hint text color
    fontStyle: FontStyle.normal, // Make it italic
  );
}
