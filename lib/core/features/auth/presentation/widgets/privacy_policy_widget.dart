import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../shared/widgets/colors.dart';
import '../../../../../shared/widgets/text.dart';

class PrivacyPolicyWidget extends StatelessWidget {
  final bool agreed;
  final void Function(bool?)? onChanged;
  const PrivacyPolicyWidget(
      {Key? key, required this.agreed, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.3,
          child: Checkbox(
              fillColor: MaterialStateProperty.all<Color>(Colors.black),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4.0))),
              value: agreed,
              onChanged: onChanged),
        ),
        Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EzText.fromString(
                "agreed_with".tr(),
                size: TextSize.s,
                color: AppColors.black.color,
              ),
              EzText.fromString(
                "privacy_policy".tr(),
                size: TextSize.s,
                weight: TextWeight.bold,
                color: AppColors.black.color,
                textDecoration: TextDecoration.underline,
              )
            ])
      ],
    );
  }
}
