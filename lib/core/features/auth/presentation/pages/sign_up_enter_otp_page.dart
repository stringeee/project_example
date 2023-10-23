import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:logger/logger.dart';

import '../../../../../shared/widgets/ez_loading.dart';
import '../../../../../shared/widgets/timer/timer_widget.dart';
import '../blocs/finish_phone_verification_cubit/finish_phone_verification_cubit.dart';
import '../widgets/pop_button.dart';
import '../../../../../shared/widgets/buttons.dart';
import '../../../../../shared/widgets/colors.dart';
import '../../../../../shared/widgets/scaffold.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../../shared/widgets/text.dart';
import '../../../../app/injector/injector.dart';
import '../../../../app/route/router.gr.dart';

class SignUpEnterOTPPage extends StatelessWidget {
  final String phone;
  const SignUpEnterOTPPage({Key? key, required this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<FinishPhoneVerificationCubit>(
          create: (context) => injector())
    ], child: EnterCodePageBodyWidget(phone: phone));
  }
}

class EnterCodePageBodyWidget extends StatefulWidget {
  final String phone;
  const EnterCodePageBodyWidget({Key? key, required this.phone})
      : super(key: key);

  @override
  State<EnterCodePageBodyWidget> createState() =>
      _EnterCodePageBodyWidgetState();
}

class _EnterCodePageBodyWidgetState extends State<EnterCodePageBodyWidget> {
  final TextEditingController _codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocListener<FinishPhoneVerificationCubit,
        FinishPhoneVerificationState>(
      listener: (context, state) {
        state.when(
            initial: () {},
            codeSent: () {
              Logger().d("codeSent");
            },
            phoneVerified: () {
              context.router.push(
                  SignUpEnterPersonalInformationRoute(phone: widget.phone));
            },
            phoneCompleteVerificationFailed: (error) {
              EzLoading.showError("otp_error".tr());
            });
      },
      child: EzScaffold(
          body: KeyboardVisibilityBuilder(builder: (context, keyboardIsOut) {
        return SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(vertical: keyboardIsOut ? 0 : 45.h),
          child: Column(
            children: [
              Visibility(
                visible: !keyboardIsOut,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(children: const [
                      PopButton(),
                    ]),
                    SizedBox(height: 24.h),
                    Row(
                      children: [
                        EzText.fromString(
                          "confirm_code".tr(),
                          size: TextSize.el,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  PinCodeTextField(
                    controller: _codeController,
                    appContext: context,
                    onChanged: (text) {},
                    length: 4,
                    validator: (text) {
                      if (text == null) {
                        //CMS
                        return 'Введите текст';
                      } else if (text.isEmpty) {
                        //CMS
                        return 'Введите текст';
                      }
                      return null;
                    },
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(8),
                        fieldHeight: 56.h,
                        fieldWidth: 56.w,
                        activeFillColor: Colors.white,
                        inactiveColor: Colors.white,
                        selectedColor: AppColors.black.color,
                        selectedFillColor: Colors.white,
                        inactiveFillColor: Colors.white,
                        errorBorderColor: Colors.redAccent,
                        activeColor: AppColors.black.color),
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                  ),
                  const EzTimerWidget(),
                ],
                mainAxisSize: MainAxisSize.min,
              ),
              Column(
                children: [
                  EzButtonFromString(
                    "check_code".tr().toUpperCase(),
                    onPressed: () {
                      if (_codeController.text.length == 4) {
                        context.read<FinishPhoneVerificationCubit>().verify(
                            phone: widget.phone, code: _codeController.text);
                      } else {
                        EzLoading.showError("enter_code".tr());
                      }
                    },
                    height: 69.h,
                    backgroundColor: AppColors.black.color,
                  ),
                  SizedBox(height: 11.h),
                  EzButtonFromString(
                    "change_phone".tr().toUpperCase(),
                    onPressed: () {
                      context.router.pop();
                    },
                    primary: AppColors.black.color,
                    height: 69.h,
                    backgroundColor: Colors.white,
                    borderSide: BorderSide(color: AppColors.grey.color),
                  ),
                ],
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ));
      })),
    );
  }
}
