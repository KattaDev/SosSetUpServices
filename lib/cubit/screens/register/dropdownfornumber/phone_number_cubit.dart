import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sossetupservice/cubit/screens/register/dropdownfornumber/phone_number_state.dart';

class PhoneNumberCubit extends Cubit<PhoneNumberState> {
  PhoneNumberCubit() : super(PhoneNumberInitial());
  var dropdownValuePhone = "+998";

  changeCountry(var tappedIndex) {
    dropdownValuePhone = tappedIndex;
    emit(PhoneNumberInitial());
  }
}
