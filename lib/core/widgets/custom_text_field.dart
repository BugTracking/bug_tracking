import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_color.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Icon? prefixIcon;
  final IconButton? suffixIcon;
  final Color? color;
  final TextStyle? hintStyle;
  final bool obscureText;
  final String? errorMsg;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;

  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.prefixIcon,
      this.color,
      this.hintStyle,
      this.suffixIcon,
      this.obscureText = false,
      this.keyboardType,
      this.errorMsg,
      required this.textInputAction});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.lightGrey, width: 0.8),
          borderRadius: BorderRadius.circular(8.0),
        ),
        hintText: hintText,
        hintStyle: hintStyle,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
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
