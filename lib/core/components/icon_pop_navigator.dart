import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class IconPopNavigator extends StatelessWidget {
  VoidCallback navigator;
  IconPopNavigator({Key? key, required this.navigator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.only(left: 12.w),
      icon: Icon(
        Icons.arrow_back_ios,
        size: 28.h,
      ),
      onPressed: () {
        navigator;
      },
    );
  }
}
