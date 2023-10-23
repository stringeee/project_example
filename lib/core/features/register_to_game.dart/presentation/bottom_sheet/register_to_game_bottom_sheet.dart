import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gameroom/core/app/injector/injector.dart';
import 'package:gameroom/core/features/auth/game_data/presentation/cubit/game_data_cubit.dart';
import 'package:gameroom/core/features/register_to_game.dart/presentation/cubit/register_to_game_cubit.dart';
import 'package:flutter/services.dart';

import '../../../../../shared/widgets/buttons.dart';
import '../../../../../shared/widgets/text.dart';
import '../../../../../shared/widgets/text_field/get_text_field_data_extension.dart';
import '../../../../../shared/widgets/text_field/text_field.dart';
import '../../../games_list/data/models/game.dart';

class RegisterToGameBottomSheer extends StatefulWidget {
  const RegisterToGameBottomSheer(
      {Key? key, required this.model, required this.gameDataCubit})
      : super(key: key);

  final GameModel model;
  final GameDataCubit gameDataCubit;

  @override
  State<RegisterToGameBottomSheer> createState() =>
      _RegisterToGameBottomSheerState();
}

class _RegisterToGameBottomSheerState extends State<RegisterToGameBottomSheer> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterToGameCubit>(
      create: (context) => injector(),
      child: Scaffold(
        body: BlocConsumer<RegisterToGameCubit, RegisterToGameState>(
            listener: (context, state) {
          state.maybeWhen(
              orElse: () {},
              success: () {
                widget.gameDataCubit.getGame(widget.model.gameId);
                Navigator.pop(context);
              });
        }, builder: (context, state) {
          return state.maybeWhen(
            failure: (e) {
              return Column(
                children: const [
                  Text(
                      'Не удалось зарегистрировать вас, закройте окно и попробуйте снова'),
                ],
              );
            },
            initial: () {
              return Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        EzText.fromString(
                          'После нажатия на кнопку, "Записаться на игру", сделайте перевод на номер каспи. Если имя не совпадает с тем, что вы ввели выше, добавьте это имя в комментарии. Если перевод не поступит в течении 20 минут, вы будете удалены из игры',
                          color: Colors.redAccent,
                          weight: TextWeight.bold,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 10,
                        ),
                        EzText.fromString('Введите свое имя'),
                        const SizedBox(
                          height: 10,
                        ),
                        EzTextField(
                          textFieldType: TextFieldType.name,
                          textEditingController: textEditingController,
                        ),
                        const Divider(),
                        SizedBox(
                          height: 10.h,
                        ),
                        EzText.fromString(
                          'Номер каспи',
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                EzText.fromString(
                                  '87009739189',
                                  color: Colors.blueAccent,
                                  weight: TextWeight.bold,
                                ),
                                EzText.fromString(
                                  'Ерлан А',
                                  color: Colors.black,
                                  weight: TextWeight.bold,
                                ),
                              ],
                            ),
                            TextButton(
                                onPressed: () {
                                  Clipboard.setData(const ClipboardData(
                                          text: "87009739189"))
                                      .then((_) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text("Номер скопирован")));
                                  });
                                },
                                child: EzText.fromString('Скопировать'))
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        EzButtonString('Записаться на игру', onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<RegisterToGameCubit>().registerToGame(
                                name: textEditingController.text,
                                gameModel: widget.model);
                          }
                        }),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            orElse: () {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            },
          );
        }),
      ),
    );
  }
}
