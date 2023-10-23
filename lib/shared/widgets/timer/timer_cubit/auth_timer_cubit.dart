import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../shared/mixins/logger_mixin.dart';

part 'auth_timer_state.dart';
part 'auth_timer_cubit.freezed.dart';

class AuthTimerCubit extends Cubit<AuthTimerState> with LoggerMixin {
  late int maxSeconds;
  Timer? timer;
  AuthTimerCubit() : super(const AuthTimerState.initial()) {
    startTimer();
  }

  Future<void> stopTimer() async {
    timer?.cancel();
  }

  Future<void> resetTimer() async {
    timer?.cancel();
    startTimer();
  }

  Future<void> startTimer() async {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      // log.d(timer.tick);
      if (timer.tick == maxSeconds) {
        timer.cancel();
        emit(const AuthTimerState.timerStoped());
      } else {
        emit(AuthTimerState.timerIsRunning(currentTime: timer.tick));
      }
    });
  }

  void updateMaxSeconds(int newValue) {
    maxSeconds = newValue;
  }
}
