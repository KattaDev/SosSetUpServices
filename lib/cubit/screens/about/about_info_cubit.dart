
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sossetupservice/cubit/screens/about/about_info_state.dart';

class AboutInfoCubit extends Cubit<AboutInfoState> {
  AboutInfoCubit() : super(AboutInfoInitial());
}
