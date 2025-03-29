import 'package:daily_expense/components/color/colors.dart';
import 'package:daily_expense/components/customButton/submittbutton.dart';
import 'package:daily_expense/components/textEditField/passwordinputfield.dart';
import 'package:daily_expense/ui/registrationUi/registration.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../components/textEditField/username.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16, top: 50, right: 16, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Image(
                height: 200,
                width: 300,
                image: AssetImage('assets/images/banner_image.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: UserNameTextInputField(
                  title: "Username",
                  controller: usernameController,
                  onCheckChanged: (bool value) {
                    print(value.toString());
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: PasswordInputField(
                    title: "Password",
                    controller: passwordController,
                    placeholderText: "Enter your password"),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: SubmitButton(
                  onButtonClick: () {},
                  value: 'Sign In',
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.center,
                child: RichText(
                    text: TextSpan(
                        text: "Are you already registered? ",
                        style: TextStyle(color: titleColor, fontSize: 14),
                        children: [
                      TextSpan(
                          text: "Sign Up",
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          RegistrationScreen()));
                            })
                    ])),
              ),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Divider(
                        color: Color(0xffeeeeee),
                        thickness: 1,
                        endIndent: 10, // Add spacing before 'or'
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                      child: Text(
                        "OR",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Divider(
                        color: Color(0xffeeeeee),
                        thickness: 1,
                        indent: 10,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: primaryColor,
                      elevation: 4,
                      shape: CircleBorder(),
                      child: FaIcon(
                        FontAwesomeIcons.google,
                        color: Colors.white,
                        size: 24,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: primaryColor,
                      elevation: 4,
                      shape: CircleBorder(),
                      child: FaIcon(
                        FontAwesomeIcons.facebookF,
                        color: Colors.white,
                        size: 24,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: primaryColor,
                      elevation: 4,
                      shape: CircleBorder(),
                      child: FaIcon(
                        FontAwesomeIcons.xTwitter,
                        color: Colors.white,
                        size: 24,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
