
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/avi_bilet/secondDrop/dropdownsecondwhere_state.dart';

class DropdownsecondwhereCubit extends Cubit<DropdownsecondwhereState> {
  DropdownsecondwhereCubit() : super(DropdownsecondwhereInitial());
  var dropdownValueS = null;

  changeCountry(var tappedIndex) {
    dropdownValueS = tappedIndex;
    emit(DropdownsecondwhereInitial());
  }
}
