import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_member.dart';
import 'package:bug_tracking/features/bug_details/logic/cubit/bug_details_cubit.dart';
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BugDetailsMembersList extends StatelessWidget {
  const BugDetailsMembersList({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.read<BugDetailsCubit>().bugDetailsModel!.members.isEmpty) {
      return Center(
        child: Text(
          'No members yet',
          style: AppTexts.text16OnBackgroundNunitoSansBold,
        ),
      );
    }
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        UserModel member =
            context.read<BugDetailsCubit>().bugDetailsModel!.members[index];
        return CustomMember(
          image: member.avatar,
          name: member.name,
          body: member.email,
        );
      },
      separatorBuilder: (context, index) => verticalSpace(8.0),
      itemCount:
          context.read<BugDetailsCubit>().bugDetailsModel?.members.length ?? 0,
    );
  }
}
