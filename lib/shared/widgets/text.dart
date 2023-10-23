import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';

class EzText extends Text {
  EzText(
    TextData data, {
    Key? key,
    TextSize size = TextSize.m,
    TextWeight weight = TextWeight.normal,
    Color? color,
  }) : super(
          data.text,
          key: key,
          style: GoogleFonts.rubik(
            fontSize: size.value,
            fontWeight: weight.value,
            color: color,
          ),
        );

  EzText.fromString(String data,
      {Key? key,
      TextSize size = TextSize.m,
      TextWeight weight = TextWeight.normal,
      Color? color,
      TextDecoration? textDecoration})
      : super(
          data,
          key: key,
          style: GoogleFonts.rubik(
            decoration: textDecoration,
            fontSize: size.value,
            fontWeight: weight.value,
            color: color,
          ),
        );
}

enum TextData {
  hello,
  loginTitle,
  loginButtonTitle,
  homePageTitle,
  authWelcome,
  gameRoom,
  login,
  signUp,
  alreadyHaveAcc,
  noAcc
}

extension GetTranslationKey on TextData {
  String get text {
    switch (this) {
      case TextData.hello:
        return 'hello'.tr();
      case TextData.loginTitle:
        return 'login_title'.tr();
      case TextData.loginButtonTitle:
        return 'login_button_text'.tr().toUpperCase();
      case TextData.homePageTitle:
        return 'home_page_title'.tr();
      case TextData.authWelcome:
        return 'auth_welcome'.tr();
      case TextData.gameRoom:
        return "GameRoom";
      case TextData.login:
        return "login".tr().toUpperCase();
      case TextData.signUp:
        return "sign_up".tr().toUpperCase();
      case TextData.alreadyHaveAcc:
        return "already_have_account".tr().toUpperCase();
      case TextData.noAcc:
        return "have_no_account".tr().toUpperCase();
    }
  }
}

enum TextSize { s, m, l, el }

extension GetSize on TextSize {
  double get value {
    switch (this) {
      case TextSize.s:
        return 15.sp;
      case TextSize.m:
        return 20.sp;
      case TextSize.l:
        return 25.sp;
      case TextSize.el:
        return 30.sp;
    }
  }
}

enum TextWeight { thin, normal, bold }

extension GetFontWeigth on TextWeight {
  FontWeight get value {
    switch (this) {
      case TextWeight.thin:
        return FontWeight.w200;
      case TextWeight.normal:
        return FontWeight.normal;
      case TextWeight.bold:
        return FontWeight.bold;
    }
  }
}
