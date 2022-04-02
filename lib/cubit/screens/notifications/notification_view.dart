import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sossetupservice/core/constants/colors.dart';

class NotificationViewCubit extends StatelessWidget {
  const NotificationViewCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "/bottom");
          },
          icon: Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Icon(
              Icons.arrow_back_ios,
              color: blackColor,
              size: 30.h,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Notifications",
          style: TextStyle(
            color: mainColor,
            fontSize: 28.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Text(
          "Hozircha notifications yo'q!",
          style: TextStyle(
            fontSize: 25.sp,
            color: greyColor,
          ),
        ),
      ),
    );
  }
}
