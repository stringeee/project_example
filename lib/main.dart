import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'shared/mixins/logger_mixin.dart';

import 'core/app/auth/cubit/auth_cubit.dart';
import 'core/app/injector/injector.dart';
import './shared/bloc_observer.dart';

// import 'core/app/route/router.gr.dart';
import 'core/app/route/navigation_observer.dart';
import 'core/app/route/router.gr.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  BlocOverrides.runZoned(
    () async {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      configureDependencies();
      runApp(EasyLocalization(
          supportedLocales: const [Locale('ru')],
          path: 'assets/lang',
          fallbackLocale: const Locale(
            'ru',
          ),
          child: const App(child: MyApp())));
    },
    blocObserver: MyBlocObserver(),
  );
}

class App extends StatelessWidget {
  const App({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final _router = injector<AppRouter>();

    return BlocProvider<AuthCubit>(
        create: (context) => injector<AuthCubit>()..checkAuth(),
        child: BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            state.when(noUser: () {
              _router.root.replaceAll([const AuthWrapperRoute()]);
            }, authenticated: (user) {
              _router.root.replaceAll([const HomeRoute()]);

              // _router.routes.clear();
            });
          },
          child: child,
        ));
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with LoggerMixin {
  final _router = injector<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (child) {
          return MaterialApp.router(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            builder: EasyLoading.init(),
            theme: ThemeData(
                primarySwatch: Colors.blue,
                primaryColor: Colors.blueAccent,
                appBarTheme:
                    const AppBarTheme(backgroundColor: Colors.blueAccent)),
            routeInformationParser:
                _router.defaultRouteParser(includePrefixMatches: true),
            routerDelegate: _router.delegate(
              navigatorObservers: () =>
                  <NavigatorObserver>[NavigationObserver()],
            ),
          );
        });
  }
}
