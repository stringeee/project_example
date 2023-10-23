import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';

import '../../../../app/route/router.gr.dart';
import '../../../../../shared/widgets/buttons.dart';
import '../../../../../shared/widgets/colors.dart';
import '../../../../../shared/widgets/scaffold.dart';
import '../../../../../shared/widgets/assets.dart';
import '../../../../../shared/widgets/text.dart';

class ChooseAuthMethodPage extends StatelessWidget {
  const ChooseAuthMethodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ChooseAuthPageBodyWidget();
  }
}

class ChooseAuthPageBodyWidget extends StatelessWidget {
  const ChooseAuthPageBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EzScaffold(
        body: SafeArea(
            child: Column(
      children: [
        Column(
          children: [
            EzText(
              TextData.authWelcome,
              size: TextSize.el,
            ),
            EzText(
              TextData.gameRoom,
              size: TextSize.el,
              color: AppColors.green.color,
            ),
            SizedBox(height: 54.h),
          ],
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        Center(
          child: Image.asset(
            Assets.appLogo.getAssetUrl,
            width: 228.w,
            filterQuality: FilterQuality.high,
          ),
        ),
        Column(
          children: [
            EzButton(
              TextData.login,
              onPressed: () {
                context.router.push(const SignIn());
              },
              height: 69.h,
              backgroundColor: AppColors.black.color,
            ),
            SizedBox(height: 11.h),
            EzButton(
              TextData.signUp,
              onPressed: () {
                context.router.push(const SignUpRoute());
              },
              height: 69.h,
              backgroundColor: AppColors.green.color,
            ),
          ],
          mainAxisSize: MainAxisSize.min,
        )
      ],
      mainAxisAlignment: MainAxisAlignment.spaceAround,
    )));
  }
}
