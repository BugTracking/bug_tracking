import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/bug_details/logic/cubit/bug_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BugDetailsAttachmentsCategoryText extends StatelessWidget {
  const BugDetailsAttachmentsCategoryText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0.h),
      child: Row(
        children: [
          Row(
            children: [
              Text(
                'Attachments',
                style: AppTexts.text16OnBackgroundNunitoSansBold,
              ),
              horizontalSpace(3),
              Text(
                context
                        .read<BugDetailsCubit>()
                        .bugDetailsModel
                        ?.attachments
                        .length
                        .toString() ??
                    '0',
                style: AppTexts.text16PrimaryNunitoSansBold,
              ),
            ],
          ),
          const Spacer(),
          Text(
            'Category : ${context.read<BugDetailsCubit>().bugDetailsModel?.bug.category.title}',
            style: AppTexts.text16OnBackgroundNunitoSansBold,
          ),
        ],
      ),
    );
  }
}
