import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_priority_status_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bug_tracking/features/home/data/models/project_response_body.dart';

class LatestProjectBody extends StatelessWidget {
  final ProjectModel project;
  const LatestProjectBody({Key? key,required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10.0),
      onTap: () => context.push(Routes.projectDetails),
      child:  Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xffE9EAEC),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 0,
                child: CircleAvatar(
                  radius: 30,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/project.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 65.0.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          project.title,
                          style: AppTexts.text16OnBackgroundNunitoSansSemiBold,
                        ),
                         CustomPriorityStatusContainer(
                          text: project.status,
                          color: AppColor.bluish,
                        ),
                      ],
                    ),
                    verticalSpace(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Last Update on ${project.lastUpdatedAt.extractDate()}',
                          style: AppTexts.text8GreyNunitoSansRegular,
                        ),
                        Text(
                          'Created on ${project.timeCreated.extractDate()}',
                          style: AppTexts.text8GreyNunitoSansRegular,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

    );
  }
}
