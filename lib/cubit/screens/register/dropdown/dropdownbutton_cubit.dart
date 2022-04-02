import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import  'package:sossetupservice/cubit/screens/register/dropdown/dropdown_cubit.dart';
import 'package:sossetupservice/cubit/screens/register/dropdown/dropdown_state.dart';

class DropDownButton extends StatelessWidget {
  const DropDownButton({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DropdownCubit(),
      child: BlocBuilder<DropdownCubit, DropdownState>(
        builder: (context, state) {
          var _context = context.watch<DropdownCubit>();
          return DropdownButton(
            underline: Container(
              color: Colors.transparent,
            ),
            onChanged: (v) {
              context.read<DropdownCubit>().changeCountry(v);
            },
            value: _context.dropdownValue,
            items: const [
              DropdownMenuItem(
                value: "JAPAN",
                child: Text("JAPAN"),
              ),
              DropdownMenuItem(
                value: "UZBEKISTAN",
                child: Text("UZBEKISTAN"),
              ),
              DropdownMenuItem(
                value: "KOREA",
                child: Text("KOREA"),
              ),
              DropdownMenuItem(
                value: "USA",
                child: Text("USA"),
              ),
              DropdownMenuItem(
                value: "RUSSIA",
                child: Text("RUSSIA"),
              ),
              DropdownMenuItem(
                value: "EUROPA",
                child: Text("EUROPA"),
              ),
            ],
          );
        },
      ),
    );
  }
}
