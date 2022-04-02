import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sossetupservice/core/components/auth_reg_pass_text_form.dart';
import 'package:sossetupservice/core/components/elevated_button_auth.dart';
import 'package:sossetupservice/core/components/forgot_reg_auth_text_button.dart';
import 'package:sossetupservice/core/components/text_auth_forgot_reg.dart';
import 'package:sossetupservice/core/components/text_phone_auth_forgor.dart';
import 'package:sossetupservice/core/components/title_all_auth_pages.dart';
import 'package:sossetupservice/core/constants/colors.dart';

class AuthViewCubit extends StatelessWidget {
  const AuthViewCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TitleAllAuthPages(title: "Kirish", size: 36.sp),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    shadowColor: mainColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.r)),
                    elevation: 7.h,
                    child: const TextForgotAuth(),
                  ),
                  SizedBox(height: 25.h),
                  Material(
                    shadowColor: mainColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.r)),
                    elevation: 5.h,
                    child: const AuthRegPassTextForm(),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 185.w),
            child: TextButton(
              child: Text(
                "Parolni unutdingizmi?",
                style: TextStyle(
                  color: mainColor,
                  fontSize: 17.sp,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "/forgot",
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.h),
            child: ElevatedButtonCom(
              title: "Kirish",
              navigator: "/bottom",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextForgotAuthReg(text: "Sizda account yo'qmi?"),
              ForgotRegAuthTextButton(
                  text: "Yangi kiriting!", navigator: "/register"),
            ],
          ),
        ],
      ),
    );
  }
}
