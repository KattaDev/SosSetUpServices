import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sossetupservice/core/widgets/cubit_bottom_nav_bar/bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  int pageIndex = 0;
  BottomNavBarCubit() : super(BottomNavBarInitial());
  

  changePages(int tappedIndex) {
    pageIndex = tappedIndex;
    emit(BottomNavBarInitial());
  }
}
