import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:logger/logger.dart';

import '../../../../../shared/widgets/ez_loading.dart';
import '../blocs/enter_creds_cubit/enter_creds_cubit.dart';
import '../widgets/age_field.dart';
import '../widgets/password_textfield.dart';
import '../widgets/pop_button.dart';
import '../../../../../shared/widgets/buttons.dart';
import '../../../../../shared/widgets/colors.dart';
import '../../../../../shared/widgets/scaffold.dart';
import '../../../../../shared/widgets/text_field/get_text_field_data_extension.dart';
import '../../../../../shared/widgets/text_field/text_field.dart';
import '../../../../../shared/widgets/text.dart';
import '../../../../app/injector/injector.dart';

class SignUpEnterPersonalInformationPage extends StatelessWidget {
  final String phone;
  const SignUpEnterPersonalInformationPage({Key? key, required this.phone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EnterCredsCubit>(
      create: (context) => injector(),
      child: EnterYourInformationPageBodyWidget(
        phone: phone,
      ),
    );
  }
}

class EnterYourInformationPageBodyWidget extends StatefulWidget {
  final String phone;
  const EnterYourInformationPageBodyWidget({Key? key, required this.phone})
      : super(key: key);

  @override
  State<EnterYourInformationPageBodyWidget> createState() =>
      _EnterYourInformationPageBodyWidgetState();
}

class _EnterYourInformationPageBodyWidgetState
    extends State<EnterYourInformationPageBodyWidget> {
  bool obscureText = true;
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool paswordsEqual =
        passwordController.text == confirmPasswordController.text;

    bool allFieldsAreFilled = firstNameController.text.isNotEmpty &&
        lastNameController.text.isNotEmpty &&
        ageController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        confirmPasswordController.text.isNotEmpty;

    return BlocListener<EnterCredsCubit, EnterCredsState>(
      listener: (context, state) {
        state.when(
            initial: () {},
            requestSent: () {
              Logger().d("request sent");
            },
            signUpSuccess: () {
              EzLoading.showSuccess("success".tr());
            },
            signUpFailed: (String failureMessage) {
              EzLoading.showError(failureMessage);
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
                          "enter_your_info".tr(),
                          size: TextSize.el,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  EzTextField(
                    textEditingController: firstNameController,
                    textFieldType: TextFieldType.name,
                  ),
                  SizedBox(height: 12.h),
                  EzTextField(
                    textEditingController: lastNameController,
                    textFieldType: TextFieldType.surname,
                  ),
                  SizedBox(height: 12.h),
                  AgeTextField(textEditingController: ageController),
                  SizedBox(height: 12.h),
                  PasswordTextField(
                    textEditingController: passwordController,
                    obscureText: obscureText,
                    onTap: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                  ),
                  SizedBox(height: 12.h),
                  EzTextField(
                    textEditingController: confirmPasswordController,
                    textFieldType: TextFieldType.confirmPassword,
                    obscureText: obscureText,
                  ),
                ],
                mainAxisSize: MainAxisSize.min,
              ),
              EzButton(
                TextData.signUp,
                onPressed: () {
                  if (allFieldsAreFilled && paswordsEqual) {
                    context.read<EnterCredsCubit>().signUp(
                        phone: widget.phone,
                        firstName: firstNameController.text,
                        lastName: lastNameController.text,
                        birthDate: ageController.text,
                        password: passwordController.text);
                  } else if (!paswordsEqual) {
                    EzLoading.showError("confirm_password_error".tr());
                  } else {
                    EzLoading.showError("fields_fill_error".tr());
                  }
                },
                height: 69.h,
                backgroundColor: AppColors.black.color,
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ));
      })),
    );
  }
}
