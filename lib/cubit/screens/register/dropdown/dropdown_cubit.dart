import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sossetupservice/cubit/screens/register/dropdown/dropdown_state.dart';

class DropdownCubit extends Cubit<DropdownState> {
  DropdownCubit() : super(DropdownInitial());
   var  dropdownValue = null;

  changeCountry(var tappedIndex) {
    dropdownValue = tappedIndex;
    emit(DropdownInitial());
  }
}
