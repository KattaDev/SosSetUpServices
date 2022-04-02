import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sossetupservice/core/constants/colors.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/avi_bilet/firstDrop/dropfirstwhere_cubit.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/avi_bilet/firstDrop/dropfirstwhere_state.dart';

class DropDownFirstWhereView extends StatelessWidget {
  const DropDownFirstWhereView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DropfirstwhereCubit(),
      child: BlocBuilder<DropfirstwhereCubit, DropfirstwhereState>(
        builder: (context, state) {
          var _context = context.watch<DropfirstwhereCubit>();
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
              context.read<DropfirstwhereCubit>().changeCountry(v);
            },
            value: _context.dropdownValueF,
            items: [
              DropdownMenuItem(
                value: "TAS",
                child: TextFirsWhereDrop(text: "TAS"),
              ),
              DropdownMenuItem(
                value: "HND",
                child: TextFirsWhereDrop(text: "HND"),
              ),
              DropdownMenuItem(
                value: "NRT",
                child: TextFirsWhereDrop(text: "NRT"),
              ),
              DropdownMenuItem(
                value: "TYO-All airplane",
                child: TextFirsWhereDrop(text: "TYO-All airplane"),
              ),
              DropdownMenuItem(
                value: "DXB",
                child: TextFirsWhereDrop(text: "DXB"),
              ),
              DropdownMenuItem(
                value: "IST",
                child: TextFirsWhereDrop(text: "IST"),
              ),
              DropdownMenuItem(
                value: "GMP",
               child: TextFirsWhereDrop(text: "GMP"),
              ),
              DropdownMenuItem(
                value: "All airports",
                child: TextFirsWhereDrop(text: "All airports"),
              ),
            ],
          );
        },
      ),
    );
  }
}

class TextFirsWhereDrop extends StatelessWidget {
  String text;

  TextFirsWhereDrop({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 30.h, color: mainColor),
    );
  }
}
