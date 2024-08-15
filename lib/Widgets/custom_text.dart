import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  const CustomText(  
      {super.key,
      this.text,
      this.fontWeight,
      this.fontSize,
      this.color,
      this.fontFamily,
      this.textdirection});
  final String? text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final String? fontFamily;
  final TextAlign? textdirection;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      textAlign: textdirection,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontWeight: fontWeight,               
          fontSize: fontSize,
          color: color,
          fontFamily: fontFamily),
    );
  }
}
