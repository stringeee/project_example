import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';
import 'get_text_field_data_extension.dart';

class EzTextField extends TextFormField {
  EzTextField({
    required TextFieldType textFieldType,
    bool? enabled,
    TextEditingController? textEditingController,
    FocusNode? focus,
    Key? key,
    bool? obscureText,
    ValueChanged<String>? onChanged,
    GestureTapCallback? onTap,
    VoidCallback? onEditingComplete,
    ValueChanged<String>? onFieldSubmitted,
    FormFieldSetter<String>? onSaved,
  }) : super(
          key: key,
          controller: textEditingController,
          obscureText: obscureText ?? textFieldType.obscureText,
          keyboardType: textFieldType.keyboardType,
          focusNode: focus,
          validator: textFieldType.validator,
          onEditingComplete: onEditingComplete,
          onChanged: onChanged,
          onTap: onTap,
          onFieldSubmitted: onFieldSubmitted,
          onSaved: onSaved,
          enabled: enabled,
          inputFormatters: textFieldType.formatters,
          cursorColor: AppColors.black.color,
          decoration: InputDecoration(
            hintText: textFieldType.hintText,
            labelText: textFieldType.labelText,
            filled: true,
            fillColor: Colors.white,
            floatingLabelStyle: TextStyle(color: AppColors.black.color),
            constraints: BoxConstraints(maxWidth: 350.w, minHeight: 60.h),
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
        );
}
