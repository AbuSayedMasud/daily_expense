import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../color/colors.dart';
import '../textStyle/textstyle.dart';

class TextEditInputField extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  final String placeholderText;
  final TextInputAction keyboardAction;
  final TextInputType keyboardType;

  const TextEditInputField(
      {super.key,
      required this.title,
      required this.controller,
      required this.placeholderText,
      this.keyboardAction = TextInputAction.done,
      this.keyboardType = TextInputType.text});

  @override
  State<TextEditInputField> createState() => _TextEditInputFieldState();
}

class _TextEditInputFieldState extends State<TextEditInputField> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        widget.title,
        style: tittleText(),
        textAlign: TextAlign.start,
      ),
      SizedBox(
        height: 8,
      ),
      TextField(
        controller: widget.controller,
        style: inputText(),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8), // Rounded corners
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: primaryColor, width: 1),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          hintText: widget.placeholderText,
          hintStyle: hintText(),
          counterText: "",
        ),
        keyboardType: widget.keyboardType,
        textInputAction: widget.keyboardAction,
        maxLines: 1,
        maxLength: 20,
      ),
    ]);
  }
}
