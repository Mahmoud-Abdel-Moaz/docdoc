import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsets? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon ;
  final TextInputType? textInputType;
  final Color? backgroundColors;

  const AppTextFormField({super.key, this.contentPadding, this.focusedBorder, this.enabledBorder, this.inputTextStyle, this.hintStyle, required this.hintText, this.isObscureText, this.suffixIcon,  this.textInputType, this.backgroundColors});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding??EdgeInsets.symmetric(horizontal: 20.w,vertical: 18.h),
        focusedBorder: focusedBorder?? OutlineInputBorder(
          borderSide: const BorderSide(color: ColorsManager.mainBlue, width: 1.3),
          borderRadius: BorderRadius.circular(16.0),
        ),
        enabledBorder: enabledBorder?? OutlineInputBorder(
          borderSide: const BorderSide(color: ColorsManager.lighterGray, width: 1.3),
          borderRadius: BorderRadius.circular(16.0),
        ),
        hintStyle:hintStyle?? TextStyles.font14LightGrayRegular,
        hintText :hintText,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: backgroundColors??ColorsManager.moreLightGray,
      ),
      obscureText:isObscureText?? false,
      style:inputTextStyle?? TextStyles.font14DarkBlueMedium,
    );
  }
}
