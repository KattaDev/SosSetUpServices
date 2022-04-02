import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sossetupservice/core/constants/colors.dart';

class ProfileViewCubit extends StatelessWidget {
  const ProfileViewCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.logout,
                size: 35.h,
                color: blackColor,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.person_crop_circle,
                color: mainColor,
                size: 100.h,
              ),
              SizedBox(height: 10.h),
              Text(
                "998999750425",
                style: TextStyle(
                  color: blackColor,
                  fontSize: 20.h,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "sos set up service raqam",
                style: TextStyle(
                  color: greyColor,
                  fontSize: 15.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Divider(thickness: 3.h, color: mainColor),
          Padding(
            padding: EdgeInsets.only(top: 25.h, left: 20.w),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.person_circle,
                      size: 35.h,
                      color: mainColor,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "Botirjon",
                      style: TextStyle(
                        fontSize: 28.h,
                        color: blackColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.person_circle,
                      size: 35.h,
                      color: mainColor,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "Mahamadaliyev",
                      style: TextStyle(
                        fontSize: 28.h,
                        color: blackColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.location_solid,
                      size: 35.h,
                      color: mainColor,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "UZBEKISTAN",
                      style: TextStyle(
                        fontSize: 28.h,
                        color: blackColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
