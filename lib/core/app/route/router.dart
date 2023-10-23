import 'package:auto_route/auto_route.dart';

import '../../features/auth/presentation/pages/choose_auth_method_page.dart';
import '../../features/auth/presentation/pages/sign_up_enter_otp_page.dart';
import '../../features/auth/presentation/pages/sign_up_enter_personal_info_page.dart';
import '../../features/auth/presentation/pages/sign_up_page.dart';
import '../../features/game_data/presentation/page/game_page.dart';

import '../../features/auth/presentation/pages/auth_wrapper.dart';
import '../../features/auth/presentation/pages/page.dart';

import '../../features/auth/presentation/pages/sign_in_page.dart';
import 'auth_guard.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/auth', page: AuthWrapperPage, guards: [
      AuthGuard
    ], children: [
      AutoRoute(page: ChooseAuthMethodPage, path: ''),
      AutoRoute(page: SignIn, path: 'auth'),
      AutoRoute(page: SignUpPage, path: 'signUp'),
      AutoRoute(page: SignUpEnterOTPPage, path: 'enterCode'),
      AutoRoute(page: SignUpEnterPersonalInformationPage, path: 'enterInfo'),
    ]),
    AutoRoute(
      page: HomePage,
      path: '/home',
    ),
    AutoRoute(
      page: GamePage,
      path: '/game',
    )
  ],
)
// extend the generated private router
class $AppRouter {}
