import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/features/allprojects/data/model/project_response_body.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_texts.dart';

class ProjectMembers extends StatelessWidget {
  final ProjectModel project;
  const ProjectMembers({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: 0,
            top: -1,
            right: -15,
            child: CircleAvatar(
              backgroundColor: AppColor.darkGreyish,
              radius: 13,
              child: Text(
                project.lastUpdatedBy.name.toShortcutEachWord(),
                style: AppTexts.text10PrimaryNunitoSansSemiBold,
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: const Color(0xffD9D9D9),
            radius: 17,
            child: Text(
              project.creator.name.toShortcutEachWord(),
              style: AppTexts.text10PrimaryNunitoSansSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
