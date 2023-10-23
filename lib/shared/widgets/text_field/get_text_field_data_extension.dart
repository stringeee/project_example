import 'package:easy_localization/easy_localization.dart';
import 'package:easy_mask/easy_mask.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:password_strength/password_strength.dart';

enum TextFieldType {
  password,
  phoneNumber,
  name,
  age,
  confirmPassword,
  surname,
  search,
}

String _throwEmpty() => 'empty_field_exception'.tr();

extension GetTextFieldData on TextFieldType {
  bool get obscureText {
    if (this == TextFieldType.password) {
      return true;
    } else {
      return false;
    }
  }

  List<TextInputFormatter>? get formatters {
    if (this == TextFieldType.phoneNumber) {
      return [
        TextInputMask(
          mask: '\\+7 (799) 999 9999',
          placeholder: '+',
        )
      ];
    }
    return null;
  }

  FormFieldValidator<String> get validator {
    switch (this) {
      case TextFieldType.password:
        return (text) {
          if (text == null || text.isEmpty) {
            return _throwEmpty();
          } else {
            double strength = estimatePasswordStrength(text);
            if (strength < 0.6) {
              return 'weak_password'.tr();
            }
          }
          return null;
        };
      case TextFieldType.phoneNumber:
        return (text) {
          if (text == null) {
            return _throwEmpty();
          } else if (text.isEmpty) {
            return _throwEmpty();
          }
          if (text.length != 17) {
            return 'wrong_email'.tr();
          }

          return null;
        };
      case TextFieldType.name:
        return (text) {
          if (text == null || text.isEmpty) {
            return _throwEmpty();
          }
          return null;
        };
      case TextFieldType.surname:
        return (text) {
          if (text == null || text.isEmpty) {
            return _throwEmpty();
          }
          return null;
        };
      case TextFieldType.search:
        return (text) {
          return null;
        };
      case TextFieldType.age:
        return (text) {
          if (text == null) {
            return _throwEmpty();
          } else if (text.isEmpty) {
            return _throwEmpty();
          }

          return null;
        };
      case TextFieldType.confirmPassword:
        return (text) {
          if (text == null || text.isEmpty) {
            return _throwEmpty();
          } else {
            double strength = estimatePasswordStrength(text);
            if (strength < 0.6) {
              return 'weak_password'.tr();
            }
          }
          return null;
        };
    }
  }

  TextInputType get keyboardType {
    switch (this) {
      case TextFieldType.password:
        return TextInputType.visiblePassword;
      case TextFieldType.phoneNumber:
        return TextInputType.number;
      case TextFieldType.name:
        return TextInputType.name;
      case TextFieldType.surname:
        return TextInputType.name;
      case TextFieldType.search:
        return TextInputType.text;
      case TextFieldType.age:
        return TextInputType.number;
      case TextFieldType.confirmPassword:
        return TextInputType.visiblePassword;
    }
  }

  String get hintText {
    switch (this) {
      case TextFieldType.password:
        return 'password_hint'.tr();
      case TextFieldType.phoneNumber:
        return 'login_hint'.tr();
      case TextFieldType.name:
        return 'name_hint'.tr();
      case TextFieldType.search:
        return 'search_hint'.tr();
      case TextFieldType.surname:
        return 'surname_hint'.tr();
      case TextFieldType.age:
        return 'age_hint'.tr();
      case TextFieldType.confirmPassword:
        return "confirm_password".tr();
    }
  }

  String? get labelText {
    switch (this) {
      case TextFieldType.password:
        return 'password_label'.tr();
      case TextFieldType.phoneNumber:
        return 'login_label'.tr();
      case TextFieldType.name:
        return 'name_label'.tr();
      case TextFieldType.surname:
        return 'surname_label'.tr();
      case TextFieldType.search:
        return null;
      case TextFieldType.age:
        return 'age_label'.tr();
      case TextFieldType.confirmPassword:
        return "confirm_password".tr();
    }
  }
}
