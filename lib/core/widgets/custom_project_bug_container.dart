import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_members_circles.dart';
import 'package:bug_tracking/core/widgets/custom_priority_status_container.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomProjectBugContainer extends StatelessWidget {
  final String title;
  final String lastUpdateAt;
  final String status;
  final String createdOn;
  final String creator;
  final String lastUpdatedBy;
  final bool isProject;
  const CustomProjectBugContainer({
    super.key,
    required this.title,
    required this.lastUpdateAt,
    required this.status,
    required this.createdOn,
    required this.creator,
    required this.lastUpdatedBy,
    required this.isProject,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffE9EAEC),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTexts.text16OnBackgroundNunitoSansSemiBold,
                ),
                verticalSpace(5.0),
                Text(
                  "Last Update on ${DateFormat('dd MMM').format(DateTime.parse(lastUpdateAt))}",
                  style: AppTexts.text8GreyNunitoSansRegular,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomPriorityStatusContainer(
                text: status,
                color: isProject
                    ? getProjectStatusColor(status)
                    : getBugStatusColor(status),
              ),
              verticalSpace(5.0),
              Text(
                "Last Update on ${DateFormat('dd MMM').format(DateTime.parse(createdOn))}",
                style: AppTexts.text8GreyNunitoSansRegular,
              ),
            ],
          ),
          horizontalSpace(5.0),
          CustomMemebrsCilrcles(
            mainName: creator,
            subName: lastUpdatedBy,
          ),
        ],
      ),
    );
  }
}
