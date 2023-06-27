import 'package:flutter/material.dart';

import 'CommonTextWidget.dart';

class MyAppbar extends StatelessWidget {
  final String text;
  const MyAppbar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CommonTextWidget(text: text, normal: false),
          SizedBox(
            width: 18,
          ),
        ],
      ),
    );
  }
}
