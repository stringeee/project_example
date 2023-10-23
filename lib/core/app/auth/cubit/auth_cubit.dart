import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../route/router.gr.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@singleton
class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required AppRouter appRouter})
      : _appRouter = appRouter,
        super(const AuthState.noUser());

  final AppRouter _appRouter;

  bool get canNavigateToNextPage {
    return state.when(
      noUser: () => false,
      authenticated: (_) => true,
    );
  }

  void checkAuth() {
    Logger().d('Method called!');
    final user = FirebaseAuth.instance.currentUser;
    Logger().d(user);

    if (user != null) {
      _appRouter.root.replaceAll([const HomeRoute()]);

      emit(AuthState.authenticated(user));
    } else {
      _appRouter.root.replaceAll([const AuthWrapperRoute()]);

      emit(const AuthState.noUser());
    }
  }

  void authenticate(User user) {
    _appRouter.root.replaceAll([const HomeRoute()]);

    emit(AuthState.authenticated(user));
  }

  void logOut() {
    emit(const AuthState.noUser());
    FirebaseAuth.instance.signOut();
    _appRouter.root.replaceAll([const AuthWrapperRoute()]);
  }
}
