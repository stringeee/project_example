import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../app/route/router.gr.dart';
import '../../../data/models/game.dart';
import '../../../../../../shared/widgets/containers.dart';
import '../../../../../../shared/widgets/text.dart';

class GameWidget extends StatelessWidget {
  const GameWidget({Key? key, required this.gameModel}) : super(key: key);
  final GameModel gameModel;

  @override
  Widget build(BuildContext context) {
    return EzContainer(
        backgroundColor: Colors.grey[100],
        onTap: () {
          context.router.push(GameRoute(gameModel: gameModel));
        },
        elevation: 1,
        child: Column(
          children: [
            SizedBox(
              width: 1.sw,
              height: 200.h,
              child: Stack(
                children: [
                  SizedBox(
                    width: 1.sw,
                    height: 200.h,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Hero(
                        tag: gameModel.gameId,
                        child: Image.network(
                          gameModel.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.sp),
                          color: Colors.blueAccent.withOpacity(.8)),
                      padding: EdgeInsets.all(8.w),
                      child: EzText.fromString(
                        '${gameModel.maxPlayersPerTeam * 3 - gameModel.players.length} мест',
                        color: Colors.white,
                        weight: TextWeight.bold,
                        size: TextSize.s,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 7.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      EzText.fromString(
                        gameModel.title,
                        weight: TextWeight.bold,
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_city, size: TextSize.s.value),
                          SizedBox(
                            width: 5.w,
                          ),
                          EzText.fromString(
                            gameModel.address,
                            size: TextSize.s,
                          )
                        ],
                      ),
                    ],
                  ),
                  RichText(
                    text: TextSpan(
                        text: gameModel.price.toString(),
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: TextSize.m.value,
                          fontWeight: TextWeight.bold.value,
                        ),
                        children: [
                          TextSpan(
                            text: ' Тенге',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: TextWeight.normal.value,
                              fontSize: TextSize.s.value,
                            ),
                          )
                        ]),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
