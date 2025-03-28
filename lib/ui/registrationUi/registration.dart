import 'package:daily_expense/components/color/colors.dart';
import 'package:daily_expense/shell/topbar.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../components/customButton/submittbutton.dart';
import '../../components/textEditField/textinputfield.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController userName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Registration"),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextEditInputField(
                title: 'Name',
                controller: userName,
                placeholderText: "Enter your name",
                keyboardAction: TextInputAction.next,
              ),
              SizedBox(
                height: 16,
              ),
              TextEditInputField(
                title: 'Phone Number',
                controller: userName,
                placeholderText: "Enter your number",
                keyboardAction: TextInputAction.next,
                keyboardType: TextInputType.phone,
              ),
              SizedBox(
                height: 16,
              ),
              TextEditInputField(
                title: 'Email',
                controller: email,
                placeholderText: "Enter your email",
                keyboardAction: TextInputAction.done,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 20,
              ),
              DottedBorder(
                color: primaryColor,
                strokeWidth: 1,
                strokeCap: StrokeCap.butt,
                dashPattern: [8, 4],
                borderType: BorderType.RRect,
                // Rounded rectangle
                radius: Radius.circular(10),
                // Corner radius
                child: Container(
                    width: double.infinity,
                    height: 150,
                    alignment: Alignment.center,
                    color: Colors.grey.shade50,
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Row(

                      ),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: SubmitButton(
                  onButtonClick: () {

                  },
                  value: 'Submit',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
