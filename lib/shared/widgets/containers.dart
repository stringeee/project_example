import 'package:flutter/material.dart';

import 'text.dart';

class EzContainer extends StatelessWidget {
  const EzContainer(
      {Key? key,
      required this.child,
      this.size,
      this.backgroundColor,
      this.elevation = 0,
      this.onTap})
      : super(key: key);
  final Size? size;
  final Widget child;
  final Color? backgroundColor;
  final VoidCallback? onTap;
  final double elevation;

  EzContainer.foodCard(
      {required String imageUrl,
      required String title,
      required String description,
      required EzFoodStatus status,
      Key? key,
      this.onTap})
      : backgroundColor = status.color,
        elevation = 0,
        size = const Size(300, 200),
        //TODO implement foodCard ui
        child = ListTile(
          title: EzText.fromString(title),
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      elevation: elevation,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          width: size?.width,
          height: size?.height,
          child: child,
        ),
      ),
    );
  }
}

enum EzFoodStatus { selected, notSelected }

extension GetContainerColorExtension on EzFoodStatus {
  Color get color {
    switch (this) {
      case EzFoodStatus.selected:
        return Colors.blueAccent.withOpacity(0.3);
      case EzFoodStatus.notSelected:
        return Colors.white;
    }
  }
}
