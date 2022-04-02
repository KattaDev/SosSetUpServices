import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sossetupservice/core/constants/colors.dart';

// ignore: must_be_immutable
class TextRegisterName extends StatelessWidget {
  String hintTextForm;
   TextRegisterName({Key? key,required this.hintTextForm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: mainColor,
      elevation: 7.h,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
      child: TextFormField(
        cursorColor: cursorColor,
        showCursor: true,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: hintTextForm,
          hintStyle: TextStyle(fontSize: 19.sp),
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 14.w),
            child: Icon(
              CupertinoIcons.person,
              size: 38.h,
              color: mainColor,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
          ),
        ),
      ),
    );
  }
}
