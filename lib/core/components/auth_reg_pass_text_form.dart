import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sossetupservice/core/constants/colors.dart';

class AuthRegPassTextForm extends StatefulWidget {
  const AuthRegPassTextForm({Key? key}) : super(key: key);

  @override
  State<AuthRegPassTextForm> createState() => _AuthRegPassTextFormState();
}

class _AuthRegPassTextFormState extends State<AuthRegPassTextForm> {
  bool eye = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: eye,
      cursorColor: cursorColor,
      showCursor: true,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: "Parol",
        hintStyle: TextStyle(fontSize: 19.sp),
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 14.w),
          child: Icon(
            Icons.lock,
            size: 38.h,
            color: mainColor,
          ),
        ),
        suffixIconColor: greyColor,
        suffixIcon: IconButton(
          icon: eye
              ? Icon(
                  Icons.remove_red_eye,
                  size: 30.h,
                )
              : Icon(
                  CupertinoIcons.eye_slash_fill,
                  size: 30.h,
                ),
          onPressed: () {
            setState(() {
              eye = !eye;
            });
          },
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
        ),
      ),
    );
  }
}
