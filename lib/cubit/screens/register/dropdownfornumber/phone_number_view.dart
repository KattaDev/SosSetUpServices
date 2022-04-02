import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sossetupservice/cubit/screens/register/dropdownfornumber/phone_number_cubit.dart';
import 'package:sossetupservice/cubit/screens/register/dropdownfornumber/phone_number_state.dart';

class DropDownButtonPhoneNumber extends StatelessWidget {
  const DropDownButtonPhoneNumber({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PhoneNumberCubit(),
      child: BlocBuilder<PhoneNumberCubit, PhoneNumberState>(
        builder: (context, state) {
          var _context = context.watch<PhoneNumberCubit>();
          return DropdownButton(
            underline: Container(
              color: Colors.transparent,
            ),
            onChanged: (v) {
              context.read<PhoneNumberCubit>().changeCountry(v);
            },
            value: _context.dropdownValuePhone,
            items: const [
              DropdownMenuItem(
                value: "+81",
                child: Text("+81"),
              ),
              DropdownMenuItem(
                value: "+998",
                child: Text("+998"),
              ),
              DropdownMenuItem(
                value: "+82",
                child: Text("+82"),
              ),
              DropdownMenuItem(
                value: "+1",
                child: Text("+1"),
              ),
              DropdownMenuItem(
                value: "+7",
                child: Text("+7"),
              ),
              DropdownMenuItem(
                value: "+",
                child: Text("+"),
              ),
            ],
          );
        },
      ),
    );
  }
}
