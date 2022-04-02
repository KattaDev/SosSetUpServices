import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/avi_bilet/firstDrop/dropfirstwhere_state.dart';

class DropfirstwhereCubit extends Cubit<DropfirstwhereState> {
  DropfirstwhereCubit() : super(DropfirstwhereInitial());
  var dropdownValue = null;

  changeCountry(var tappedIndex) {
    dropdownValue = tappedIndex;
    emit(DropfirstwhereInitial());
  }
}
