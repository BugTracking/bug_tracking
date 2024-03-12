import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_shimmer_list.dart';
import 'package:bug_tracking/features/home/data/models/user_response_body.dart';
import 'package:bug_tracking/features/members/logic/member_cubit.dart';
import 'package:bug_tracking/features/members/logic/member_state.dart';
import 'package:bug_tracking/features/members/ui/widgets/add_member.dart';
import 'package:bug_tracking/features/members/ui/widgets/members_list.dart';
import 'package:bug_tracking/features/members/ui/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MembersScreen extends StatelessWidget {
  const MembersScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Members'),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                builder: (_) => BlocProvider.value(
                  value: context.read<MembersCubit>(),
                  child: const AddMember(),
                ),
              );
            },
            icon: const Icon(
              Icons.add,
              color: AppColor.bluish,
            ),
          ),
        ],
      ),
      body: BlocBuilder<MembersCubit, MembersState>(
        builder: (context, state) {
          MembersCubit cubit = context.read<MembersCubit>();
          if (cubit.userData == null) {
            return const Center(
              child: CustomShimmerList(),
            );
          }
          UserData userData = cubit.userData!;
          List<UserModel> members = userData.members;
          if (userData.members.isEmpty) {
            return Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0.h),
                child: Text(
                  'No Members added yet',
                  style: AppTexts.text16OnBackgroundNunitoSansBold,
                ),
              ),
            );
          }
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0.w,
              vertical: 20.0.h,
            ),
            child: Column(
              children: [
                SearchWidget(
                  hintText: 'Search Here...',
                  controller: context.read<MembersCubit>().searchController,
                ),
                verticalSpace(10),
                Expanded(
                  child: MembersList(
                    members: cubit.filteredList.isEmpty
                        ? members
                        : cubit.filteredList,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
