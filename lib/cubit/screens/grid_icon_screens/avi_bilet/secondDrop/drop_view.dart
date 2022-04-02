import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sossetupservice/core/constants/colors.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/avi_bilet/secondDrop/dropdownsecondwhere_cubit.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/avi_bilet/secondDrop/dropdownsecondwhere_state.dart';

class DropDownSecondWhereView extends StatelessWidget {
  const DropDownSecondWhereView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DropdownsecondwhereCubit(),
      child: BlocBuilder<DropdownsecondwhereCubit, DropdownsecondwhereState>(
        builder: (context, state) {
          var _context = context.watch<DropdownsecondwhereCubit>();
          return DropdownButton(
            isExpanded: true,
            hint: Text(
              "Tanlang",
              style: TextStyle(
                backgroundColor: Colors.transparent,
                fontSize: 30.h,
              ),
            ),
            underline: Container(
              color: Colors.transparent,
            ),
            onChanged: (v) {
              context.read<DropdownsecondwhereCubit>().changeCountry(v);
            },
            value: _context.dropdownValueS,
            items: [
              DropdownMenuItem(
                value: "TAS",
                child: TextSecondWhereDrop(text: "TAS"),
              ),
              DropdownMenuItem(
                value: "HND",
                child: TextSecondWhereDrop(text: "HND"),
              ),
              DropdownMenuItem(
                value: "NRT",
                child: TextSecondWhereDrop(text: "NRT"),
              ),
              DropdownMenuItem(
                value: "TYO-All airplane",
                child: TextSecondWhereDrop(text: "TYO-All airplane"),
              ),
              DropdownMenuItem(
                value: "DXB",
                child: TextSecondWhereDrop(text: "DXB"),
              ),
              DropdownMenuItem(
                value: "IST",
                child: TextSecondWhereDrop(text: "IST"),
              ),
              DropdownMenuItem(
                value: "GMP",
               child: TextSecondWhereDrop(text: "GMP"),
              ),
              DropdownMenuItem(
                value: "All airports",
                child: TextSecondWhereDrop(text: "All airports"),
              ),
            ],
          );
        },
      ),
    );
  }
}

class TextSecondWhereDrop extends StatelessWidget {
  String text;

  TextSecondWhereDrop({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 30.h, color: mainColor),
    );
  }
}
