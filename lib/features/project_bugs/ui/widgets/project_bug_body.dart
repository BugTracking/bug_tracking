import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';

class ProjectBugBody extends StatelessWidget {
  const ProjectBugBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry .',
            style: AppTexts.text14GreyCairoSemiBold,
          ),
        ),
        CircleAvatar(
          backgroundColor: const Color(0xffD9D9D9),
          radius: 16,
          child: Text(
            'MR',
            style: AppTexts.text10PrimaryNunitoSansSemiBold,
          ),
        )
      ],
    );
  }
}
