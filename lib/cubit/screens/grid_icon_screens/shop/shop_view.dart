import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sossetupservice/core/components/icon_pop_navigator.dart';
import 'package:sossetupservice/core/constants/colors.dart';

class ShopViewCubit extends StatefulWidget {
  const ShopViewCubit({Key? key}) : super(key: key);

  @override
  State<ShopViewCubit> createState() => _ShopViewCubitState();
}

class _ShopViewCubitState extends State<ShopViewCubit>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Oziq ovqat",
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DefaultTabController(
                length: 2,
                child: SizedBox(
                  height: 66.h,
                  width: MediaQuery.of(context).size.width.w,
                  child: ButtonsTabBar(
                    controller: tabController,
                    buttonMargin: EdgeInsets.only(left: 18.w),
                    labelStyle: TextStyle(fontSize: 25.sp, color: whiteColor),
                    unselectedLabelStyle:
                        TextStyle(color: mainColor, fontSize: 25.sp),
                    unselectedBorderColor: mainColor,
                    borderColor: mainColor,
                    borderWidth: 2.h,
                    unselectedBackgroundColor: whiteColor,
                    backgroundColor: mainColor,
                    tabs: const [
                      Tab(
                        text: "   Oziq ovqat   ",
                      ),
                      Tab(
                        text: "  No oziq ovqat  ",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          foodExpantionTile(),
        ],
      ),
    );
  }

  Expanded foodExpantionTile() {
    return Expanded(
      child: TabBarView(
        controller: tabController,
        children: [
          ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(10.h),
                child: Container(
                  height: 450.h,
                  width: MediaQuery.of(context).size.width.w,
                  decoration: BoxDecoration(
                      color: greyColor,
                      borderRadius: BorderRadius.circular(5.r)),
                  child: Column(
                    children: [
                      Container(
                        height: 240.h,
                        width: 300.w,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/",
                            ),
                          ),
                        ),
                      ),
                      const ExpansionTile(
                        title: Text("Hello"),
                        children: [
                          Text(
                            "Mello",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Container(),
        ],
      ),
    );
  }
}
