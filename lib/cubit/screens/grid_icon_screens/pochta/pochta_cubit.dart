import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'pochta_state.dart';

class PochtaCubit extends Cubit<PochtaState> {
  PochtaCubit() : super(PochtaInitial());
}
