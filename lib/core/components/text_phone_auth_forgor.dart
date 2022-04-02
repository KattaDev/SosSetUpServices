import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sossetupservice/core/constants/colors.dart';

class TextForgotAuth extends StatelessWidget {
  const TextForgotAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      showCursor: true,
      cursorColor: cursorColor,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 14.w),
          child: SizedBox(
            width: 75.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.call,
                  size: 34.h,
                  color: mainColor,
                ),
                Icon(
                  Icons.add,
                  color: blackColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
