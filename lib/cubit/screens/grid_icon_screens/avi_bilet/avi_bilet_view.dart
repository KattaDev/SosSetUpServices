import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sossetupservice/core/constants/colors.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/avi_bilet/firstDrop/drop_view.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/avi_bilet/secondDrop/drop_view.dart';

class AviTicketViewCubit extends StatelessWidget {
  const AviTicketViewCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height.h,
        width: MediaQuery.of(context).size.width.w,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/avi.jpeg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SOS Avi Bilet",
              style: TextStyle(
                color: whiteColor,
                fontSize: 35.h,
              ),
            ),
            SizedBox(height: 15.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "Qayerdan",
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 25.h,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        width: 200.w,
                        child: const DropDownFirstWhereView(),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Qayerga",
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 25.h,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        width: 200.w,
                        child:  const DropDownSecondWhereView(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
