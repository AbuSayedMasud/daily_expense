import 'package:flutter/material.dart';

import '../color/colors.dart'; // Ensure `textGradient` is defined in this file
import '../textStyle/textstyle.dart';

class SubmitButton extends StatefulWidget {
  final VoidCallback onButtonClick;

  const SubmitButton({super.key, required this.onButtonClick});

  @override
  State<SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onButtonClick,
      child: Container(
        width: double.infinity, // Set the fixed width to 100
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: backgroundGradient, // Gradient colors
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10), // 10 radius corners
        ),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20), // Padding
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "Sign In",
            style: submitText(), // Assuming submitText() is your custom text style
          ),
        ),
      ),
    );
  }
}
