import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Icon? prefixIcon;
  final IconButton? suffixIcon;
  final bool obscureText;
  final String? errorMsg;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool isEnabled;
  final int? maxLines;
  final Function(String)? oncChange;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    required this.keyboardType,
    this.errorMsg,
    required this.textInputAction,
    this.isEnabled = true,
    this.maxLines = 1,
    this.oncChange,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      maxLines: maxLines,
      decoration: InputDecoration(
        enabled: isEnabled,
        contentPadding: EdgeInsets.symmetric(
          vertical: 16.h,
          horizontal: 16.0.w,
        ),
        border: const OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColor.darkGreyish,
            width: 0.8,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColor.darkGreyish,
            width: 0.8,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColor.bluish,
            width: 0.8,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        hintText: hintText,
        hintStyle: AppTexts.text14GreyNunitoSansSemiBold,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
      onChanged: oncChange,
      textInputAction: textInputAction,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorMsg;
        }
        return null;
      },
      keyboardType: keyboardType,
    );
  }
}
