// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../../features/auth/presentation/pages/auth_wrapper.dart' as _i1;
import '../../features/auth/presentation/pages/choose_auth_method_page.dart'
    as _i4;
import '../../features/auth/presentation/pages/page.dart' as _i2;
import '../../features/auth/presentation/pages/sign_in_page.dart' as _i5;
import '../../features/auth/presentation/pages/sign_up_enter_otp_page.dart'
    as _i7;
import '../../features/auth/presentation/pages/sign_up_enter_personal_info_page.dart'
    as _i8;
import '../../features/auth/presentation/pages/sign_up_page.dart' as _i6;
import '../../features/game_data/presentation/page/game_page.dart' as _i3;
import '../../features/games_list/data/models/game.dart' as _i12;
import 'auth_guard.dart' as _i11;

class AppRouter extends _i9.RootStackRouter {
  AppRouter(
      {_i10.GlobalKey<_i10.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i11.AuthGuard authGuard;

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AuthWrapperRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthWrapperPage());
    },
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    GameRoute.name: (routeData) {
      final args = routeData.argsAs<GameRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.GamePage(key: args.key, gameModel: args.gameModel));
    },
    ChooseAuthMethodRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ChooseAuthMethodPage());
    },
    SignIn.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SignIn());
    },
    SignUpRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SignUpPage());
    },
    SignUpEnterOTPRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpEnterOTPRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.SignUpEnterOTPPage(key: args.key, phone: args.phone));
    },
    SignUpEnterPersonalInformationRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpEnterPersonalInformationRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.SignUpEnterPersonalInformationPage(
              key: args.key, phone: args.phone));
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(AuthWrapperRoute.name, path: '/auth', guards: [
          authGuard
        ], children: [
          _i9.RouteConfig(ChooseAuthMethodRoute.name,
              path: '', parent: AuthWrapperRoute.name),
          _i9.RouteConfig(SignIn.name,
              path: 'auth', parent: AuthWrapperRoute.name),
          _i9.RouteConfig(SignUpRoute.name,
              path: 'signUp', parent: AuthWrapperRoute.name),
          _i9.RouteConfig(SignUpEnterOTPRoute.name,
              path: 'enterCode', parent: AuthWrapperRoute.name),
          _i9.RouteConfig(SignUpEnterPersonalInformationRoute.name,
              path: 'enterInfo', parent: AuthWrapperRoute.name)
        ]),
        _i9.RouteConfig(HomeRoute.name, path: '/home'),
        _i9.RouteConfig(GameRoute.name, path: '/game')
      ];
}

/// generated route for
/// [_i1.AuthWrapperPage]
class AuthWrapperRoute extends _i9.PageRouteInfo<void> {
  const AuthWrapperRoute({List<_i9.PageRouteInfo>? children})
      : super(AuthWrapperRoute.name, path: '/auth', initialChildren: children);

  static const String name = 'AuthWrapperRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.GamePage]
class GameRoute extends _i9.PageRouteInfo<GameRouteArgs> {
  GameRoute({_i10.Key? key, required _i12.GameModel gameModel})
      : super(GameRoute.name,
            path: '/game', args: GameRouteArgs(key: key, gameModel: gameModel));

  static const String name = 'GameRoute';
}

class GameRouteArgs {
  const GameRouteArgs({this.key, required this.gameModel});

  final _i10.Key? key;

  final _i12.GameModel gameModel;

  @override
  String toString() {
    return 'GameRouteArgs{key: $key, gameModel: $gameModel}';
  }
}

/// generated route for
/// [_i4.ChooseAuthMethodPage]
class ChooseAuthMethodRoute extends _i9.PageRouteInfo<void> {
  const ChooseAuthMethodRoute() : super(ChooseAuthMethodRoute.name, path: '');

  static const String name = 'ChooseAuthMethodRoute';
}

/// generated route for
/// [_i5.SignIn]
class SignIn extends _i9.PageRouteInfo<void> {
  const SignIn() : super(SignIn.name, path: 'auth');

  static const String name = 'SignIn';
}

/// generated route for
/// [_i6.SignUpPage]
class SignUpRoute extends _i9.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: 'signUp');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i7.SignUpEnterOTPPage]
class SignUpEnterOTPRoute extends _i9.PageRouteInfo<SignUpEnterOTPRouteArgs> {
  SignUpEnterOTPRoute({_i10.Key? key, required String phone})
      : super(SignUpEnterOTPRoute.name,
            path: 'enterCode',
            args: SignUpEnterOTPRouteArgs(key: key, phone: phone));

  static const String name = 'SignUpEnterOTPRoute';
}

class SignUpEnterOTPRouteArgs {
  const SignUpEnterOTPRouteArgs({this.key, required this.phone});

  final _i10.Key? key;

  final String phone;

  @override
  String toString() {
    return 'SignUpEnterOTPRouteArgs{key: $key, phone: $phone}';
  }
}

/// generated route for
/// [_i8.SignUpEnterPersonalInformationPage]
class SignUpEnterPersonalInformationRoute
    extends _i9.PageRouteInfo<SignUpEnterPersonalInformationRouteArgs> {
  SignUpEnterPersonalInformationRoute({_i10.Key? key, required String phone})
      : super(SignUpEnterPersonalInformationRoute.name,
            path: 'enterInfo',
            args: SignUpEnterPersonalInformationRouteArgs(
                key: key, phone: phone));

  static const String name = 'SignUpEnterPersonalInformationRoute';
}

class SignUpEnterPersonalInformationRouteArgs {
  const SignUpEnterPersonalInformationRouteArgs(
      {this.key, required this.phone});

  final _i10.Key? key;

  final String phone;

  @override
  String toString() {
    return 'SignUpEnterPersonalInformationRouteArgs{key: $key, phone: $phone}';
  }
}
