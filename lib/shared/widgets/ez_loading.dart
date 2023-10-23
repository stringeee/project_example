import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EzLoading {
  static void showLoading(String message) {
    EasyLoading.instance
      ..backgroundColor = Colors.blueAccent
      ..fontSize = 15.sp
      ..progressColor = Colors.blueAccent
      ..indicatorColor = Colors.white
      ..textColor = Colors.white
      ..loadingStyle = EasyLoadingStyle.custom;
    if (EasyLoading.isShow) {
      EasyLoading.dismiss();
    }

    EasyLoading.show(status: message);
  }

  static void showToast(String message) {
    EasyLoading.instance
      ..backgroundColor = Colors.blueAccent
      ..fontSize = 15.sp
      ..progressColor = Colors.blueAccent
      ..indicatorColor = Colors.white
      ..textColor = Colors.white
      ..loadingStyle = EasyLoadingStyle.custom;
    if (EasyLoading.isShow) {
      EasyLoading.dismiss();
    }

    EasyLoading.showToast(message);
  }

  static void showSuccess(String message) {
    EasyLoading.instance
      ..backgroundColor = Colors.greenAccent
      ..fontSize = 15.sp
      ..progressColor = Colors.blueAccent
      ..indicatorColor = Colors.white
      ..textColor = Colors.white
      ..loadingStyle = EasyLoadingStyle.custom;
    if (EasyLoading.isShow) {
      EasyLoading.dismiss();
    }

    EasyLoading.showSuccess(message);
  }

  static void showError(String message) {
    EasyLoading.instance
      ..backgroundColor = Colors.redAccent
      ..fontSize = 15.sp
      ..progressColor = Colors.blueAccent
      ..indicatorColor = Colors.white
      ..textColor = Colors.white
      ..loadingStyle = EasyLoadingStyle.custom;
    if (EasyLoading.isShow) {
      EasyLoading.dismiss();
    }
    EasyLoading.showError(message);
  }
}
