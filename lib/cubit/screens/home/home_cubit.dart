import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sossetupservice/cubit/screens/home/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
}
