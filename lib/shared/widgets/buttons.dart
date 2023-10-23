import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'text.dart';

class EzButton extends ElevatedButton {
  EzButton(TextData text,
      {required VoidCallback onPressed,
      Key? key,
      Size? fixedSize,
      double radius = 10,
      double? width,
      double? height,
      Color backgroundColor = Colors.blueAccent,
      Color primary = Colors.white,
      BorderSide? borderSide,
      Color? shadowColor,
      bool isTextBold = true,
      double elevation = 0})
      : super(
          child: text.widget(),
          onPressed: onPressed,
          key: key,
          style: TextButton.styleFrom(
              fixedSize: Size(width ?? 350.w, height ?? 50.h),
              shape: RoundedRectangleBorder(
                side: borderSide ??
                    const BorderSide(width: 0, color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(radius)),
              ),
              primary: primary,
              backgroundColor: backgroundColor,
              shadowColor: shadowColor ?? Colors.blueAccent[700],
              elevation: elevation),
        );
}

class EzButtonFromString extends ElevatedButton {
  EzButtonFromString(String text,
      {required VoidCallback onPressed,
      Key? key,
      Size? fixedSize,
      double radius = 10,
      double? width,
      double? height,
      Color backgroundColor = Colors.blueAccent,
      Color primary = Colors.white,
      BorderSide? borderSide,
      Color? shadowColor,
      bool isTextBold = true,
      double elevation = 0})
      : super(
          child: EzText.fromString(text),
          onPressed: onPressed,
          key: key,
          style: TextButton.styleFrom(
              fixedSize: Size(width ?? 350.w, height ?? 50.h),
              shape: RoundedRectangleBorder(
                side: borderSide ??
                    const BorderSide(width: 0, color: Colors.transparent),
                borderRadius: BorderRadius.all(Radius.circular(radius)),
              ),
              primary: primary,
              backgroundColor: backgroundColor,
              shadowColor: shadowColor ?? Colors.blueAccent[700],
              elevation: elevation),
        );
}

class EzButtonString extends ElevatedButton {
  EzButtonString(String text,
      {required VoidCallback onPressed,
      Key? key,
      Size? fixedSize,
      double radius = 10,
      double? width,
      double? height,
      bool isTextBold = true,
      bool isBorder = false,
      Color? color,
      double elevation = 0})
      : super(
          child: EzText.fromString(
            text,
            weight: isBorder ? TextWeight.normal : TextWeight.bold,
          ),
          onPressed: onPressed,
          key: key,
          style: TextButton.styleFrom(
              fixedSize: Size(width ?? 350.w, height ?? 50.h),
              shape: RoundedRectangleBorder(
                side: isBorder
                    ? const BorderSide(color: Colors.blueAccent, width: 2.0)
                    : BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(radius)),
              ),
              primary: isBorder ? Colors.blueAccent : Colors.white,
              backgroundColor:
                  color ?? (isBorder ? Colors.grey[100] : Colors.blueAccent),
              shadowColor: Colors.blueAccent[700],
              elevation: elevation),
        );
}

class EzFloatingActionButton extends StatelessWidget {
  const EzFloatingActionButton(
    this.text, {
    required this.onPressed,
    Key? key,
    this.fixedSize,
    this.radius = 10,
  }) : super(key: key
            // child: text.widget,
            // onPressed: onPressed,
            // key: key,
            // // fixedSize: fixedSize ?? Size(350.w, 50.h),
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.all(Radius.circular(radius)),
            // ),

            // backgroundColor: Colors.blueAccent,
            );
  final TextData text;
  final VoidCallback onPressed;
  final Size? fixedSize;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 325.w,
      height: 60.h,
      child: FloatingActionButton(
        child: text.widget(weight: TextWeight.bold),

        onPressed: onPressed,
        key: key,
        // fixedSize: fixedSize ?? Size(350.w, 50.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),

        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}

class EzFlatButton extends TextButton {
  EzFlatButton(
    TextData text, {
    required VoidCallback onPressed,
    Key? key,
    Size? fixedSize,
    double radius = 10,
  }) : super(
          child: text.widget(weight: TextWeight.bold),
          onPressed: onPressed,
          key: key,
          style: TextButton.styleFrom(
            fixedSize: fixedSize ?? Size(350.w, 50.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(radius)),
            ),
            primary: Colors.blueAccent,
            backgroundColor: Colors.white,
          ),
        );
}

extension ToWidget on TextData {
  Text widget({TextWeight weight = TextWeight.normal}) {
    return EzText(
      this,
      weight: weight,
    );
  }
}
