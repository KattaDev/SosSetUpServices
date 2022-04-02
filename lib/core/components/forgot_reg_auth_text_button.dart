import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sossetupservice/core/constants/colors.dart';

// ignore: must_be_immutable
class ForgotRegAuthTextButton extends StatelessWidget {
  String text;
  String navigator;
  ForgotRegAuthTextButton(
      {Key? key, required this.text, required this.navigator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        text,
        style: TextStyle(
          color: mainColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, navigator);
      },
    );
  }
}
