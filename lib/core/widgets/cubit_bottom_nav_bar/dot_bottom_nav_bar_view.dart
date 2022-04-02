// import 'package:dot_navigation_bar/dot_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:sossetupservice/core/constants/colors.dart';
// import 'package:sossetupservice/core/widgets/cubit_bottom_nav_bar/bottom_nav_bar_cubit.dart';
// import 'package:sossetupservice/core/widgets/cubit_bottom_nav_bar/bottom_nav_bar_state.dart';
// import 'package:sossetupservice/cubit/screens/basket/basket_view_cubit.dart';
// import 'package:sossetupservice/cubit/screens/history/history_view_cubit.dart';
// import 'package:sossetupservice/cubit/screens/home/home_view_cubit.dart';
// import 'package:sossetupservice/cubit/screens/profile/profile_view_cubit.dart';

// // ignore: must_be_immutable
// class BottomNavBarView extends StatelessWidget {
//   const BottomNavBarView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (con) => BottomNavBarCubit(),
//       child: BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
//         builder: (con, state) {
//           var _context1 = con.watch<BottomNavBarCubit>();
//           List pages = const [
//             HomeViewCubit(),
//             BasketViewCubit(),
//             HistoryViewCubit(),
//             ProfileViewCubit(),
//           ];
//           return Scaffold(
//             body: pages[_context1.pageIndex],
//             extendBody: true,
//             bottomNavigationBar: DotNavigationBar(
//               currentIndex: _context1.pageIndex,
              
//               items: [
//                 DotNavigationBarItem(
//                   icon: Column(
//                     children: [
//                       Icon(
//                         Icons.home_outlined,
//                         color: mainColor,
//                         size: 38.h,
//                       ),
//                       Text("Asosiy")
//                     ],
//                   ),
//                 ),
//                 DotNavigationBarItem(
//                   icon: Icon(
//                     Icons.shopping_basket_outlined,
//                     color: mainColor,
//                     size: 38.h,
//                   ),
//                 ),
//                 DotNavigationBarItem(
//                   icon: Icon(
//                     Icons.history,
//                     color: mainColor,
//                     size: 38.h,
//                   ),
//                 ),
//                 DotNavigationBarItem(
//                   icon: Icon(
//                     Icons.person_outline,
//                     color: mainColor,
//                     size: 38.h,
//                   ),
//                 ),
                
//               ],
//               onTap: (int index) {
//                     con.read<BottomNavBarCubit>().changePages(index);
//               }
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
