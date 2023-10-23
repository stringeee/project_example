import 'package:flutter/material.dart';

enum AppColors {
  scaffoldBackground,
  green,
  cardBackground,
  black,
  grey,
  darkGrey,
  yellow,
  red,
  team1,
  team2,
  team3,
  fuschia100,
  fuschia80,
  fuschia60,
  iris100,
  iris80,
  iris60
}

extension GetColor on AppColors {
  Color get color {
    switch (this) {
      case AppColors.scaffoldBackground:
        return const Color(0xffF3F4F7);
      case AppColors.green:
        return const Color(0xff04764E);
      case AppColors.cardBackground:
        return const Color(0xffFFFFFF);
      case AppColors.black:
        return const Color(0xff1C1B1F);
      case AppColors.grey:
        return const Color(0xffC0C0C0);
      case AppColors.darkGrey:
        return const Color(0xff353535);
      case AppColors.yellow:
        return const Color(0xffF0DE08);
      case AppColors.red:
        return const Color(0xffF02408);
      case AppColors.team1:
        return const Color(0xffFF9900);
      case AppColors.team2:
        return const Color(0xff0F4FEA);
      case AppColors.team3:
        return const Color(0xff04760F);
      case AppColors.fuschia100:
        return const Color(0xffEF5DA8);
      case AppColors.fuschia80:
        return const Color(0xffF178B6);
      case AppColors.fuschia60:
        return const Color(0xffFCDDEC);
      case AppColors.iris100:
        return const Color(0xff5D5FEF);
      case AppColors.iris80:
        return const Color(0xff7879F1);
      case AppColors.iris60:
        return const Color(0xffA5A6F6);
    }
  }
}
