import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:injectable/injectable.dart';

import '../../core/app/injector/injector.dart';
import '../mixins/logger_mixin.dart';

@injectable
class AuthService with LoggerMixin {
  AuthService(FirebaseAuth auth) : _auth = auth;
  final FirebaseAuth _auth;

  static AuthService get instance => injector<AuthService>();

  Future<void> signIn({
    required String phoneNumber,
    required Function(PhoneAuthCredential) verificationCompleted,
    required Function(FirebaseAuthException) verificationFailed,
    required Function(String, int?) codeSent,
    required Function(String) codeAutoRetrievalTimeout,
  }) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
  }

  Stream<User?> get authStateChanges => _auth.authStateChanges();
}

enum AuthErrors { userNotFound, wrongPassword }

extension GetErrors on AuthErrors {
  String get code {
    switch (this) {
      case AuthErrors.userNotFound:
        return 'user-not-found';
      case AuthErrors.wrongPassword:
        return 'wrong-password';
    }
  }

  String get _error {
    switch (this) {
      case AuthErrors.userNotFound:
        return 'user_not_found'.tr();
      case AuthErrors.wrongPassword:
        return 'wrong_password'.tr();
    }
  }

  String? getError(String code) {
    for (AuthErrors error in AuthErrors.values) {
      if (error.code == code) {
        return error._error;
      }
    }
    return null;
  }
}
