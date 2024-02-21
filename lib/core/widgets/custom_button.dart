import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/cupertino.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const CustomButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CupertinoButton(
        onPressed: onPressed,
        color: AppColor.bluish,
        borderRadius: BorderRadius.circular(12.0),
        padding: const EdgeInsets.all(18.0),
        child: Text(
          text,
          style: AppTexts.text16WhiteLatoBold,
        ),
      ),
    );
  }
}
