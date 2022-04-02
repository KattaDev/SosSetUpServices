import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sossetupservice/cubit/screens/forgot_password/forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(ForgotPasswordInitial());
}
