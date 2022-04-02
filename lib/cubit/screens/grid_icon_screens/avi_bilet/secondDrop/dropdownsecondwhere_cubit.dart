
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/avi_bilet/secondDrop/dropdownsecondwhere_state.dart';

class DropdownsecondwhereCubit extends Cubit<DropdownsecondwhereState> {
  DropdownsecondwhereCubit() : super(DropdownsecondwhereInitial());
  var dropdownValue = null;

  changeCountry(var tappedIndex) {
    dropdownValue = tappedIndex;
    emit(DropdownsecondwhereInitial());
  }
}
