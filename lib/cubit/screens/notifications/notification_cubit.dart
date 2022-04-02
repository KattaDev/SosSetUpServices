
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sossetupservice/cubit/screens/notifications/notification_state.dart';

class NotificationCubit extends Cubit<NotificationState> {
  NotificationCubit() : super(NotificationInitial());
}
