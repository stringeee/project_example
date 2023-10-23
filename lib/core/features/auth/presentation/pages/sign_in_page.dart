import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../../../shared/widgets/ez_loading.dart';
import '../blocs/sign_in_cubit/sign_in_cubit.dart';
import '../widgets/privacy_policy_widget.dart';
import '../../../../../shared/widgets/buttons.dart';
import '../../../../../shared/widgets/colors.dart';
import '../../../../../shared/widgets/scaffold.dart';
import '../../../../../shared/widgets/text_field/get_text_field_data_extension.dart';
import '../../../../../shared/widgets/text_field/text_field.dart';
import '../../../../../shared/widgets/text.dart';
import '../../../../app/injector/injector.dart';
import '../../../../app/route/router.gr.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SignInCubit>(
          create: (context) => injector(),
        ),
      ],
      child: const AuthPageBodyWidget(),
    );
  }
}

class AuthPageBodyWidget extends StatefulWidget {
  const AuthPageBodyWidget({Key? key}) : super(key: key);

  @override
  State<AuthPageBodyWidget> createState() => _AuthPageBodyWidgetState();
}

class _AuthPageBodyWidgetState extends State<AuthPageBodyWidget> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool agreed = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      listener: (context, state) {
        state.when(
            initial: () {},
            credsSent: () {},
            credsVerified: () {
              EzLoading.showSuccess("success".tr());
            },
            credsVerificationFailed: (e) {
              EzLoading.showError("Auth error");
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
                child: Row(
                  children: [
                    EzText.fromString(
                      "auth_title".tr(),
                      size: TextSize.el,
                      weight: TextWeight.bold,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  EzTextField(
                    textEditingController: _phoneController,
                    textFieldType: TextFieldType.phoneNumber,
                  ),
                  SizedBox(height: 11.h),
                  EzTextField(
                    textEditingController: _passwordController,
                    textFieldType: TextFieldType.password,
                  ),
                  SizedBox(height: 11.h),
                  if (!keyboardIsOut) ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        EzText.fromString(
                          "forgot_password".tr(),
                          size: TextSize.s,
                          textDecoration: TextDecoration.underline,
                          color: AppColors.green.color,
                        )
                      ],
                    ),
                    SizedBox(height: 16.h),
                  ],
                  PrivacyPolicyWidget(
                      agreed: agreed,
                      onChanged: (bool? val) {
                        setState(() {
                          agreed = val!;
                        });
                      })
                ],
                mainAxisSize: MainAxisSize.min,
              ),
              Column(
                children: [
                  EzButton(
                    TextData.login,
                    onPressed: () {
                      if (agreed) {
                        context.read<SignInCubit>().signIn(
                            userName: _phoneController.text
                                .replaceAll(" ", "")
                                .replaceAll("(", "")
                                .replaceAll(")", ""),
                            password: _passwordController.text);
                      } else {
                        EzLoading.showError("confirm_privacy".tr());
                      }
                    },
                    height: 69.h,
                    backgroundColor: AppColors.black.color,
                  ),
                  SizedBox(height: 11.h),
                  EzButton(
                    TextData.noAcc,
                    onPressed: () {
                      context.router.popAndPush(const SignUpRoute());
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
