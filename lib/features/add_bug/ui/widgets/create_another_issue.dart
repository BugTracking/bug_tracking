import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';

class CreateAnotherIssue extends StatefulWidget {
  const CreateAnotherIssue({super.key});

  @override
  State<CreateAnotherIssue> createState() => _CreateAnotherIssueState();
}

class _CreateAnotherIssueState extends State<CreateAnotherIssue> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.6,
          child: Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = !isChecked;
              });
            },
            checkColor: Colors.white,
            splashRadius: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
            side: const BorderSide(
              color: AppColor.greyish,
            ),
          ),
        ),
        Expanded(
          child: Text(
            'Create another Issue',
            style: AppTexts.text14OnBackgroundCairoSemiBold,
          ),
        ),
      ],
    );
  }
}
