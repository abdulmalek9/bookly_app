import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.fontSize,
      this.borderRadius,
      required this.backgroundColor,
      this.textColor,
      required this.text});

  final double? fontSize;
  final BorderRadius? borderRadius;
  final Color backgroundColor;
  final Color? textColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(12),
              )),
          onPressed: () {},
          child: Text(
            text,
            style: AppStyles.textStyle18.copyWith(
              color: textColor,
              fontSize: fontSize ?? 18,
            ),
          )),
    );
  }
}
