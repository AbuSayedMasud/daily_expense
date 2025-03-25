import 'package:flutter/material.dart';

import '../color/colors.dart';
import '../textStyle/textstyle.dart';

class PasswordInputField extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  final String placeholderText;

  const PasswordInputField(
      {super.key,
      required this.title,
      required this.controller,
      required this.placeholderText});

  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          obscureText: isVisible,
          obscuringCharacter: "*",
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
            prefixIcon: Icon(Icons.lock, color: primaryColor),
            counterText: "",
            suffixIcon: Padding(
              padding: EdgeInsets.only(right: 8),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  icon: Icon(
                    isVisible ? Icons.visibility_off : Icons.visibility,
                    color: primaryColor,
                  )),
            ),
          ),
          keyboardType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.done,
          maxLines: 1,
          maxLength: 20,
          enableSuggestions: false, // Disable suggestions for password
          autocorrect: false, // Disable autocorrect for password
        ),
      ],
    );
  }
}
