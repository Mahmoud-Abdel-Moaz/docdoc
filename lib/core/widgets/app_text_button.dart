import 'package:docdoc/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback  onPressed;
  final TextStyle textStyle;
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;

  const AppTextButton(
      {super.key,
      required this.buttonText,
      required this.onPressed,
      this.borderRadius,
      this.backgroundColor,
      this.horizontalPadding,
      this.verticalPadding,
      this.buttonWidth,
      this.buttonHeight, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
            )),
            backgroundColor: WidgetStateProperty.all(
                backgroundColor ?? ColorsManager.mainBlue),
            padding: WidgetStateProperty.all<EdgeInsets>(
              EdgeInsets.symmetric(
                horizontal: horizontalPadding?.w ?? 12.w,
                vertical: verticalPadding?.h ?? 4.h,
              ),
            ),
            fixedSize: WidgetStateProperty.all(
              Size(buttonWidth?.w ?? double.maxFinite, buttonHeight?.h ?? 50.h),
            )),
        child: Text(
          buttonText,
          style:textStyle,
        ));
  }
}
