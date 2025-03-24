import 'package:flutter/material.dart';

import '../color/colors.dart';
import '../textStyle/textstyle.dart';

class UserNameTextInputField extends StatefulWidget {
  final String title;
  final TextEditingController controller;

  const UserNameTextInputField(
      {super.key, required this.title, required this.controller});

  @override
  State<UserNameTextInputField> createState() => _UserNameTextInputFieldState();
}

bool isChecked = false;

class _UserNameTextInputFieldState extends State<UserNameTextInputField> {
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
          hintText: 'Enter Username',
          hintStyle: hintText(),
          prefixIcon: Icon(Icons.person, color: primaryColor),
          counterText: "",
          suffixIcon: Padding(
              padding: EdgeInsets.only(right: 8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Save",
                    style: checkBoxText(),
                  ),
                  Transform.scale(
                    scale: .9,
                    child: Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      activeColor: primaryColor,
                      side: BorderSide(color: primaryColor, width: 1.2),
                      visualDensity: VisualDensity.compact,
                    ),
                  ),
                ],
              )),
        ),
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        maxLines: 1,
        maxLength: 20,
      ),
    ]);
  }
}
