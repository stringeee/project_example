import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../app/injector/injector.dart';
import '../../../auth/game_data/presentation/cubit/game_data_cubit.dart';
import '../../../games_list/data/models/game.dart';

import '../../../../../../shared/widgets/buttons.dart';
import '../../../../../../shared/widgets/text.dart';
import '../../../register_to_game.dart/presentation/bottom_sheet/register_to_game_bottom_sheet.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key, required this.gameModel}) : super(key: key);
  final GameModel gameModel;

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final _focusNode = FocusNode();

  @override
  void initState() {
    _focusNode.attach(context);
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GameDataCubit>(
      create: (context) => injector()..getGame(widget.gameModel.gameId),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 200.h,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: EzText.fromString(widget.gameModel.title),
                background: SizedBox(
                  width: 1.sw,
                  height: 200.h,
                  child: Hero(
                      tag: widget.gameModel.gameId,
                      child: Image.network(
                        widget.gameModel.imageUrl,
                        fit: BoxFit.cover,
                      )),
                ),
              ),
            ),
            BlocBuilder<GameDataCubit, GameDataState>(
                builder: (context, state) => state.maybeWhen(
                      orElse: () => const SliverFillRemaining(
                        child: Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      ),
                      failure: (e) {
                        return SliverFillRemaining(
                            child: Center(child: Text(e.toString())));
                      },
                      loaded: (gameModel) {
                        final availiableToRegister = gameModel.players.length <
                            gameModel.maxPlayersPerTeam * 3;
                        final bool isPlayerInGame = (gameModel.players.where(
                            (player) =>
                                player.phone ==
                                FirebaseAuth.instance.currentUser
                                    ?.phoneNumber)).isNotEmpty;
                        return SliverPadding(
                            padding: const EdgeInsets.only(bottom: 100),
                            sliver: SliverPadding(
                                padding: EdgeInsets.symmetric(horizontal: 16.w),
                                sliver: SliverList(
                                    delegate: SliverChildListDelegate(
                                  [
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    EzText.fromString(
                                      'Время игры:',
                                      size: TextSize.l,
                                      weight: TextWeight.bold,
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    AdditionItemsWidget(
                                      icon: Icons.date_range,
                                      itemName: ' Дата игры',
                                      trailing: EzText.fromString(
                                        '${DateFormat('dd MMM', 'ru-RU').format(widget.gameModel.startTime.toDate())}. ${DateFormat('EEEE', 'ru-RU').format(widget.gameModel.startTime.toDate()).capitalize()}',
                                        size: TextSize.s,
                                        color: Colors.blueAccent,
                                        weight: TextWeight.bold,
                                      ),
                                    ),
                                    const Divider(),
                                    AdditionItemsWidget(
                                      icon: Icons.timer_sharp,
                                      itemName: 'Время',
                                      trailing: EzText.fromString(
                                        '${DateFormat('hh:mm', 'ru-RU').format(widget.gameModel.startTime.toDate())}. ${DateFormat('hh:mm', 'ru-RU').format(widget.gameModel.startTime.toDate()).capitalize()}',
                                        size: TextSize.s,
                                        color: Colors.blueAccent,
                                        weight: TextWeight.bold,
                                      ),
                                    ),
                                    const Divider(),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    EzText.fromString(
                                      'Информация о поле:',
                                      size: TextSize.l,
                                      weight: TextWeight.bold,
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    AdditionItemsWidget(
                                        icon: Icons.shower_outlined,
                                        itemName: 'Душевая',
                                        trailing: EzText.fromString(
                                          widget.gameModel.hasWash
                                              ? 'Да'
                                              : 'Нет',
                                          size: TextSize.s,
                                          color: widget.gameModel.hasWash
                                              ? Colors.green
                                              : Colors.red,
                                          weight: TextWeight.bold,
                                        )),
                                    AdditionItemsWidget(
                                        icon: Icons.light_outlined,
                                        itemName: 'Освещение',
                                        trailing: EzText.fromString(
                                          widget.gameModel.hasLights
                                              ? 'Да'
                                              : 'Нет',
                                          size: TextSize.s,
                                          color: widget.gameModel.hasLights
                                              ? Colors.green
                                              : Colors.red,
                                          weight: TextWeight.bold,
                                        )),
                                    AdditionItemsWidget(
                                        icon: Icons.local_parking_outlined,
                                        itemName: 'Парковка',
                                        trailing: EzText.fromString(
                                          widget.gameModel.hasParking
                                              ? 'Да'
                                              : 'Нет',
                                          size: TextSize.s,
                                          color: widget.gameModel.hasParking
                                              ? Colors.green
                                              : Colors.red,
                                          weight: TextWeight.bold,
                                        )),
                                    AdditionItemsWidget(
                                        icon: Icons.lock_outline_rounded,
                                        itemName: 'Раздевалка',
                                        trailing: EzText.fromString(
                                          widget.gameModel.hasLockers
                                              ? 'Да'
                                              : 'Нет',
                                          size: TextSize.s,
                                          color: widget.gameModel.hasLockers
                                              ? Colors.green
                                              : Colors.red,
                                          weight: TextWeight.bold,
                                        )),
                                    AdditionItemsWidget(
                                        icon: Icons.reduce_capacity,
                                        itemName: 'Формат игры: ',
                                        trailing: EzText.fromString(
                                          '${widget.gameModel.maxPlayersPerTeam - 1} + 1',
                                          size: TextSize.s,
                                          color: Colors.blueAccent,
                                          weight: TextWeight.bold,
                                        )),
                                    AdditionItemsWidget(
                                        icon: Icons.supervisor_account_rounded,
                                        itemName: 'Мест свободно: ',
                                        trailing: EzText.fromString(
                                          '${widget.gameModel.maxPlayersPerTeam * 3 - widget.gameModel.players.length}',
                                          size: TextSize.s,
                                          color: Colors.blueAccent,
                                          weight: TextWeight.bold,
                                        )),
                                    AdditionItemsWidget(
                                        icon: Icons.apartment_outlined,
                                        itemName: 'Покрытие: ',
                                        trailing: EzText.fromString(
                                          widget.gameModel.room,
                                          size: TextSize.s,
                                          color: Colors.blueAccent,
                                          weight: TextWeight.bold,
                                        )),
                                    AdditionItemsWidget(
                                        icon: Icons.height,
                                        itemName: 'Размер поля: ',
                                        trailing: EzText.fromString(
                                          '${widget.gameModel.fieldHeight} x ${widget.gameModel.fieldWidth}м',
                                          size: TextSize.s,
                                          color: Colors.blueAccent,
                                          weight: TextWeight.bold,
                                        )),
                                    AdditionItemsWidget(
                                        icon: Icons.price_change,
                                        itemName: 'Цена: ',
                                        trailing: EzText.fromString(
                                          '${widget.gameModel.price} тенге',
                                          size: TextSize.s,
                                          color: Colors.blueAccent,
                                          weight: TextWeight.bold,
                                        )),
                                    const Divider(),
                                    AdditionItemsWidget(
                                        icon: Icons.room_outlined,
                                        itemName: widget.gameModel.address,
                                        trailing: TextButton(
                                            style: TextButton.styleFrom(
                                                backgroundColor: Colors
                                                    .blueAccent
                                                    .withOpacity(.2)),
                                            onPressed: () async {
                                              await launchUrl(Uri.parse(
                                                  widget.gameModel.mapUrl));
                                            },
                                            child: EzText.fromString(
                                              'Открыть карту',
                                              size: TextSize.s,
                                              color: Colors.blueAccent,
                                              weight: TextWeight.bold,
                                            ))),
                                    const Divider(),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    EzText.fromString(
                                      'Игроки:',
                                      size: TextSize.l,
                                      weight: TextWeight.bold,
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Wrap(
                                      children: widget.gameModel.players
                                          .map((e) => EzText.fromString(
                                                e.name + ", ",
                                                color: Colors.grey[700],
                                                weight: TextWeight.bold,
                                              ))
                                          .toList(),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Column(
                                      children: [
                                        EzButtonString(
                                          'Написать нам',
                                          isBorder: true,
                                          onPressed: () async {
                                            await launchUrl(Uri.parse(
                                                'https://t.me/Yerlan10'));
                                          },
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        EzButtonString(
                                          isPlayerInGame
                                              ? 'Вы уже в игре!'
                                              : availiableToRegister
                                                  ? 'Играть за 2500'
                                                  : 'Игра переполнена',
                                          color: isPlayerInGame
                                              ? Colors.green
                                              : availiableToRegister
                                                  ? null
                                                  : Colors.grey[600],
                                          onPressed: isPlayerInGame
                                              ? () {}
                                              : availiableToRegister
                                                  ? () {
                                                      showModalBottomSheet(
                                                          context: context,
                                                          isScrollControlled:
                                                              true,
                                                          builder: (_) {
                                                            return RegisterToGameBottomSheer(
                                                                model:
                                                                    gameModel,
                                                                gameDataCubit:
                                                                    context
                                                                        .read());
                                                          });
                                                    }
                                                  : () {},
                                        ),
                                      ],
                                    ),
                                  ],
                                ))));
                      },
                    ))
          ],
        ),
      ),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}

class AdditionItemsWidget extends StatelessWidget {
  const AdditionItemsWidget(
      {Key? key,
      required this.itemName,
      required this.trailing,
      required this.icon})
      : super(key: key);
  final String itemName;
  final Widget trailing;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 170.w,
                  child: EzText.fromString(
                    itemName,
                    size: TextSize.s,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            trailing,
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
      ],
    );
  }
}
