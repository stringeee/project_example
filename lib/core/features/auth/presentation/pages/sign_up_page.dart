import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

import '../blocs/sign_up_cubit/sign_up_cubit.dart';
import '../mappers/start_phone_verification_response_state_model_mapper.dart';
import '../widgets/pop_button.dart';
import '../widgets/privacy_policy_widget.dart';
import '../../../../../shared/widgets/buttons.dart';
import '../../../../../shared/widgets/colors.dart';
import '../../../../../shared/widgets/ez_loading.dart';
import '../../../../../shared/widgets/scaffold.dart';
import '../../../../../shared/widgets/text_field/get_text_field_data_extension.dart';
import '../../../../../shared/widgets/text_field/text_field.dart';
import '../../../../../shared/widgets/text.dart';
import '../../../../app/injector/injector.dart';
import '../../../../app/route/router.gr.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<SignUpCubit>(
        create: (context) => SignUpCubit(
            startPhoneVerificationResponseStateModeMapper:
                StartPhoneVerificationResponseStateModelMapper(),
            startPhoneVerificationUseCasse: injector()),
      )
    ], child: const SignUpPageBodyWidget());
  }
}

class SignUpPageBodyWidget extends StatefulWidget {
  const SignUpPageBodyWidget({Key? key}) : super(key: key);

  @override
  State<SignUpPageBodyWidget> createState() => _SignUpPageBodyWidgetState();
}

class _SignUpPageBodyWidgetState extends State<SignUpPageBodyWidget> {
  bool agreed = false;
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        state.when(
            initial: () {},
            failure: () {
              EzLoading.showError("Somethind went wrong...");
            },
            success: () {
              context.router
                  .push(SignUpEnterOTPRoute(phone: _phoneController.text));
            });
      },
      child: EzScaffold(
          body: KeyboardVisibilityBuilder(builder: (_, keyboardIsOut) {
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
                          "sign_up".tr(),
                          size: TextSize.el,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Form(
                    key: _formKey,
                    child: EzTextField(
                      textEditingController: _phoneController,
                      textFieldType: TextFieldType.phoneNumber,
                    ),
                  ),
                  SizedBox(height: 11.h),
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
                    TextData.loginButtonTitle,
                    onPressed: () {
                      if (_formKey.currentState!.validate() & agreed == true) {
                        context
                            .read<SignUpCubit>()
                            .startPhoneVerification(_phoneController.text);
                      } else {
                        EzLoading.showToast("auth_exception".tr());
                      }
                    },
                    height: 69.h,
                    backgroundColor: AppColors.black.color,
                  ),
                  SizedBox(height: 11.h),
                  EzButton(
                    TextData.alreadyHaveAcc,
                    onPressed: () {
                      _.router.popAndPush(const SignIn());
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
