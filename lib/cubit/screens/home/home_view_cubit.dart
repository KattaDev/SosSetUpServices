import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sossetupservice/core/constants/colors.dart';
import 'package:sossetupservice/core/constants/home_grid_icon_title.dart';

// ignore: must_be_immutable
class HomeViewCubit extends StatelessWidget {
  const HomeViewCubit({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w, bottom: 10.h),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.notifications_none,
                    color: mainColor,
                    size: 35.h,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/notification");
                  },
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/about");
                  },
                  icon: Icon(
                    Icons.info_outline,
                    size: 35.h,
                    color: mainColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: 10.h, left: 100.h, right: 100.h, bottom: 10.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "SOS",
                        style: TextStyle(
                          fontSize: 38.sp,
                          color: mainColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "set of services",
                        style: TextStyle(
                          color: mainColor,
                          fontSize: 20.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        size: 40.h,
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(width: 18.w),
                    Text(
                      "Balansi ko'rsatish",
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 30.h,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(10.h),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(180.w, 60.h),
                        primary: mainColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.r))),
                    child: Text(
                      "To'ldirish",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/home");
                    },
                  ),
                ),
                Divider(thickness: 3.h, color: mainColor),
              ],
            ),
            SizedBox(height: 15.h),
            GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: 9,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      child: CircleAvatar(
                        radius: 40.r,
                        backgroundColor: mainColor,
                        child: Center(
                          child: Icon(
                            iconsGrid[index],
                            size: 35.h,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => gridIconNavigator[index],
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      gridTitle[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
