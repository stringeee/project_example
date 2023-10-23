import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../buttons.dart';
import '../text.dart';

class SliverListWithBlocListenerPage
// <B extends BlocBase<S>, S>
    extends StatelessWidget {
  const SliverListWithBlocListenerPage({
    Key? key,
    required this.children,
    required this.title,
    required this.imageUrl,
    // required this.listener,
  }) : super(key: key);
  final List<Widget> children;
  final String title;
  final String imageUrl;
  // final void Function(BuildContext, S) listener;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // BlocListener<B, S>(
          //   listener: listener,
          //   child:
          CustomScrollView(
        slivers: [
          SliverAppBar(
              pinned: true,
              expandedHeight: 150.h,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(title),
                background: Container(
                  color: Colors.black,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                      child: Container(
                        decoration:
                            BoxDecoration(color: Colors.black.withOpacity(0.5)),
                      ),
                    ),
                  ),
                ),
              )),
          SliverSafeArea(
            bottom: false,
            sliver: SliverPadding(
              padding: EdgeInsets.only(bottom: 90.h),
              sliver: SliverList(
                delegate: SliverChildListDelegate(children),
              ),
            ),
          ),
        ],
      ),
      // ),
      floatingActionButton:
          EzFloatingActionButton(TextData.hello, onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
