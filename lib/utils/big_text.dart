import 'package:flutter/material.dart';

import 'dimensions.dart';
class BigText extends StatelessWidget {
  Color color = const Color(0xFF332d2b);
  final String text;
  double size;
  TextOverflow overFlow;

  BigText({Key? key, required this.color,
     required this.text,
    this.overFlow = TextOverflow.ellipsis,
    this.size = 0}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(color: color, fontWeight: FontWeight.w400,
          fontSize:size == 0 ? Dimensions.font20 : size),
    );
  }
}
