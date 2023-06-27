import 'package:flutter/material.dart';

class CommonTextWidget extends StatelessWidget {
  final String text;
  final bool normal;
  const CommonTextWidget({super.key, required this.text, required this.normal});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: normal ? 18 : 32,
          color: Color.fromARGB(255, 254, 254, 254)),
    );
  }
}
