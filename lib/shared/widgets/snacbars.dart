import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'text.dart';

class EzSnackbar {
  static void showSnacbar(BuildContext context,
      {required SnackBarType type,
      required String title,
      SnackBarAction? action}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: type.backgroundColor,
        action: action,
        content: SizedBox(
          height: 30.h,
          child: Row(
            children: [
              type.leading != null
                  ? Row(children: [
                      type.leading!,
                      SizedBox(
                        width: 10.sp,
                      ),
                    ])
                  : Container(),
              EzText.fromString(title),
            ],
          ),
        )));
  }
}

enum SnackBarType {
  loading,
  error,
  success,
}

extension SnacbarData on SnackBarType {
  Widget? get leading {
    switch (this) {
      case SnackBarType.loading:
        return SpinKitFoldingCube(
          color: Colors.white,
          size: 20.sp,
        );
      case SnackBarType.error:
        return null;
      case SnackBarType.success:
        return null;
    }
  }

  Color get backgroundColor {
    switch (this) {
      case SnackBarType.loading:
        return Colors.blueAccent;
      case SnackBarType.error:
        return Colors.redAccent;
      case SnackBarType.success:
        return Colors.greenAccent;
    }
  }
}
