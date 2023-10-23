import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';
import '../../../../../shared/widgets/colors.dart';

class AgeTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  const AgeTextField({Key? key, required this.textEditingController})
      : super(key: key);

  @override
  State<AgeTextField> createState() => _AgeTextFieldState();
}

class _AgeTextFieldState extends State<AgeTextField> {
  DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextField(
          focusNode: AlwaysDisabledFocusNode(),
          controller: widget.textEditingController,
          onTap: () {
            _selectDate(context);
          },
          cursorColor: AppColors.black.color,
          decoration: InputDecoration(
            hintText: "born_date_hint".tr(),
            labelText: "born_date_label".tr(),
            filled: true,
            fillColor: Colors.white,
            floatingLabelStyle: TextStyle(color: AppColors.black.color),
            constraints: BoxConstraints(maxWidth: 341.w, maxHeight: 60.h),
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
      ],
    );
  }

  void _selectDate(BuildContext context) async {
    DateTime? newSelectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime.now());

    try {
      _selectedDate = newSelectedDate!;
      widget.textEditingController.text =
          DateFormat('yyyy-MM-dd').format(newSelectedDate);
      // DateFormat.yMMMd().format(_selectedDate);

    } catch (e) {
      Logger().d(e);
    }
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
