import 'package:flutter/cupertino.dart';
import 'package:task_app/utils/colors.dart';
import 'package:task_app/utils/dimention.dart';

class BigText extends StatelessWidget {
  final Color color;
  final String text;
  double size;
  TextOverflow overFlow;
  BigText({
    Key? key,
      this.color = AppColors.mainBlackColor,
    required this.text,
    this.size = 0,
    this.overFlow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize:size==0? Dimentions.font20:size,
      ),
    );
  }
}
