import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sossetupservice/core/constants/colors.dart';

class HistoryViewCubit extends StatelessWidget {
  const HistoryViewCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Tarix",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 34.sp,
            color: blackColor,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      
    );
  }
}
