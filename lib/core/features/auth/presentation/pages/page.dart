import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/auth/cubit/auth_cubit.dart';
import '../../../../app/injector/injector.dart';
import '../../../games_list/presentation/cubit/games_cubit_dart_cubit.dart';
import '../../../games_list/presentation/cubit/widget/game_widget.dart';
import '../../../../../shared/widgets/scaffold.dart';
import '../../../../../shared/widgets/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return EzScaffold(
        title: TextData.homePageTitle,
        materialAppBarActions: [
          IconButton(
              icon: const Icon(
                Icons.logout_rounded,
              ),
              onPressed: () {
                context.read<AuthCubit>().logOut();
              })
        ],
        body: BlocProvider<GamesCubit>(
          create: (context) => injector()..loadGames(),
          child: const _HomePageBody(),
        ));
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GamesCubit, GamesState>(builder: (context, state) {
      return state.maybeWhen(
          orElse: () => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
          loadingFailed: (failure) {
            return Center(
              child: Text(failure),
            );
          },
          gamesLoaded: (games) {
            return ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                itemCount: games.length,
                separatorBuilder: (_, __) {
                  return SizedBox(height: 10.h);
                },
                itemBuilder: (context, i) {
                  return GameWidget(gameModel: games[i]);
                });
          });
    });
  }
}
