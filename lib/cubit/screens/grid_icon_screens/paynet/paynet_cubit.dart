
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sossetupservice/cubit/screens/grid_icon_screens/paynet/paynet_state.dart';

class PaynetCubit extends Cubit<PaynetState> {
  PaynetCubit() : super(PaynetInitial());
}
