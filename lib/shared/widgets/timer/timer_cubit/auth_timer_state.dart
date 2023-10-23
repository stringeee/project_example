part of 'auth_timer_cubit.dart';

@freezed
class AuthTimerState with _$AuthTimerState {
  const factory AuthTimerState.initial() = Initial;
  const factory AuthTimerState.timerIsRunning({required int currentTime}) =
      TimerIsRunning;
  const factory AuthTimerState.timerStoped() = TimerStoped;
}
