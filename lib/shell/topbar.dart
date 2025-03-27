import 'package:daily_expense/components/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;

  const CustomAppBar({super.key, required this.title, this.showBackButton = true});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Lottie.asset(
              'assets/lottie/topbarbackground.json',
              fit: BoxFit.fill,
            ),
          ),

          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 4,
            title: Text(
              title,
              style: TextStyle(color: primaryColor, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            centerTitle: false,
            leading: showBackButton
                ? IconButton(
              icon: Icon(Icons.arrow_back_ios_new, color: primaryColor),
              onPressed: () => Navigator.pop(context),
            )
                : null,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); // Fixed height for the AppBar
}
