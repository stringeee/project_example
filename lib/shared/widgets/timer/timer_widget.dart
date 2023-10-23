import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'timer_cubit/auth_timer_cubit.dart';

import '../colors.dart';
import '../text.dart';

class EzTimerWidget extends StatelessWidget {
  final Widget? initialWidget;
  final int maxSeconds;
  final Widget Function(int tick)? timerRunningWidget;
  final Widget? timerStopped;
  const EzTimerWidget(
      {Key? key,
      this.maxSeconds = 60,
      this.initialWidget,
      this.timerRunningWidget,
      this.timerStopped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthTimerCubit>(
      create: (_) => AuthTimerCubit()..updateMaxSeconds(maxSeconds),
      child: _EzTimerWidgetBody(
        initialWidget: () {
          return initialWidget ?? Container();
        },
        maxSeconds: maxSeconds,
        timerRunningWidget: timerRunningWidget ??
            (int tick) => _DefWidget(
                  tick: tick,
                  maxSeconds: maxSeconds,
                ),
        timerStoppedWidget: timerStopped,
      ),
    );
  }
}

class _EzTimerWidgetBody extends StatelessWidget {
  final Widget Function() initialWidget;
  final int maxSeconds;
  final Widget Function(int tick) timerRunningWidget;
  final Widget? timerStoppedWidget;

  const _EzTimerWidgetBody(
      {Key? key,
      required this.initialWidget,
      required this.maxSeconds,
      required this.timerRunningWidget,
      required this.timerStoppedWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthTimerCubit, AuthTimerState>(
      builder: (context, state) => state.when(
          initial: initialWidget,
          timerIsRunning: timerRunningWidget,
          timerStoped: () => GestureDetector(
                onTap: () => context.read<AuthTimerCubit>().resetTimer(),
                child: Row(
                  children: [
                    timerStoppedWidget ??
                        EzText.fromString("resend_in".tr(),
                            color: AppColors.grey.color,
                            size: TextSize.s,
                            textDecoration: TextDecoration.underline),
                  ],
                ),
              )),
    );
  }
}

class _DefWidget extends StatelessWidget {
  final int maxSeconds;
  final int tick;
  const _DefWidget({Key? key, required this.tick, required this.maxSeconds})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      EzText.fromString(
        "resend_in".tr() + ":",
        color: AppColors.grey.color,
        textDecoration: TextDecoration.underline,
        size: TextSize.s,
      ),
      EzText.fromString(
        "${maxSeconds - tick}",
        color: AppColors.green.color,
        weight: TextWeight.bold,
        size: TextSize.s,
      )
    ]);
  }
}
