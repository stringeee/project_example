import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class MyBlocObserver implements BlocObserver {
  final Logger log = Logger();
  @override
  void onChange(BlocBase bloc, Change change) {
    log.i(bloc);
    log.d(change);
  }

  @override
  void onClose(BlocBase bloc) {
    log.i(bloc);
  }

  @override
  void onCreate(BlocBase bloc) {
    log.i(bloc);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log.d(bloc);
    log.e(error);
    log.v(stackTrace);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    log.i(bloc);
    log.d(event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    log.i(bloc);
    log.d(transition);
  }
}
