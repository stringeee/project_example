import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';
import 'text.dart';

class EzScaffold extends StatefulWidget {
  const EzScaffold(
      {Key? key,
      required this.body,
      this.title,
      this.leading,
      this.trainlingWidgetIos,
      this.materialAppBarActions})
      : super(key: key);
  final Widget body;
  final TextData? title;
  final Widget? leading;
  final Widget? trainlingWidgetIos;
  final List<Widget>? materialAppBarActions;

  @override
  State<EzScaffold> createState() => _EzScaffoldState();
}

class _EzScaffoldState extends State<EzScaffold> {
  late final Widget appBar;
  late final bool showAppBar;
  late final String? title;
  @override
  void initState() {
    title = widget.title?.text;
    showAppBar = title != null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground.color,
      appBar: showAppBar
          ? AppBar(
              leading: widget.leading,
              title: Text(title!),
              actions: widget.materialAppBarActions,
            )
          : null,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.sp),
        child: widget.body,
      ),
    );
  }
}
