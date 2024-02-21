import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle? textStyle;
  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textStyle,
  });

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  TextStyle? textStyle;
  @override
  void initState() {
    super.initState();
    if (widget.textStyle == null) {
      textStyle = AppTexts.text12BlueLatoBold;
    } else {
      textStyle = widget.textStyle;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Text(
        widget.text,
        style: textStyle,
      ),
    );
  }
}
