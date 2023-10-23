import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../shared/widgets/colors.dart';

class PasswordTextField extends StatefulWidget {
  final void Function()? onTap;
  final bool obscureText;
  final TextEditingController textEditingController;
  const PasswordTextField(
      {Key? key,
      required this.obscureText,
      required this.onTap,
      required this.textEditingController})
      : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextField(
          controller: widget.textEditingController,
          obscureText: widget.obscureText,
          cursorColor: AppColors.black.color,
          decoration: InputDecoration(
            hintText: "password_hint".tr(),
            labelText: "password_label".tr(),
            filled: true,
            fillColor: Colors.white,
            floatingLabelStyle: TextStyle(color: AppColors.black.color),
            constraints: BoxConstraints(maxWidth: 267.w, maxHeight: 60.h),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[100]!, width: 0),
              borderRadius: BorderRadius.all(
                Radius.circular(8.sp),
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[100]!, width: 0),
              borderRadius: BorderRadius.all(
                Radius.circular(8.sp),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.sp),
              ),
              borderSide: BorderSide(color: AppColors.black.color),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.sp),
              ),
              borderSide: const BorderSide(color: Colors.redAccent),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.sp),
              ),
              borderSide: const BorderSide(color: Colors.grey),
            ),
          ),
        ),
        GestureDetector(
          onTap: widget.onTap,
          child: Container(
            width: 59.w,
            height: 60.h,
            decoration: BoxDecoration(
                color: AppColors.green.color,
                borderRadius: BorderRadius.circular(8)),
            child: Icon(
              widget.obscureText
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              color: Colors.white,
              size: 24.sp,
            ),
          ),
        )
      ],
    );
  }
}
