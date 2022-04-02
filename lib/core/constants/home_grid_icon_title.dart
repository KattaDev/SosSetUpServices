import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/avi_bilet/avi_bilet_view.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/chat/chat_view.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/job/job_view.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/paynet/paynet_view.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/pochta/pochta_view.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/pul_yuborish/pul_yuboridh_view.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/shop/shop_view.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/tolovlar/tolovlar_view.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/visa/visa_support_view.dart';

List iconsGrid = const [
  Icons.shopping_basket,
  CupertinoIcons.money_yen,
  Icons.payment,
  Icons.airplane_ticket,
  Icons.email,
  Icons.payments,
  Icons.card_travel,
  Icons.work,
  Icons.chat,
];

List gridTitle = [
  "Shop",
  "Pul yuborish",
  "Paynet",
  "Avi bilet",
  "Pochta",
  "To'lovlar",
  "Visa support",
  "Job",
  "Chat",
];

List gridIconNavigator = [
  ShopViewCubit(),
  const TrasferMoneyViewCubit(),
  const PaynetViewCubit(),
  const AviTicketViewCubit(),
  const EmailViewCubit(),
  const TolovlarViewCubit(),
  const VisaSupportViewCubit(),
  const JobViewCubit(),
  const ChatViewCubit(),
];
