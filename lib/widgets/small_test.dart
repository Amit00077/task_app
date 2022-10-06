// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
 import 'package:task_app/utils/colors.dart';

class SmallText extends StatelessWidget {
  final Color color;
  final String text;
  double size;
  double height;

  SmallText({
    Key? key,
      this.color = AppColors.titleColor,
    required this.text,
    this.size = 12,
    this.height = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        height: height,
      ),
    );
  }
}
