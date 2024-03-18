import 'package:bug_tracking/core/helpers/constants.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_divider.dart';
import 'package:bug_tracking/features/allbugs/logic/cubit/bugs_cubit.dart';
import 'package:bug_tracking/features/allbugs/logic/cubit/bugs_state.dart';
import 'package:bug_tracking/features/filter/widgets/bug_filter_submit.dart';
import 'package:bug_tracking/features/filter/widgets/filter_box.dart';
import 'package:bug_tracking/features/filter/widgets/filter_container.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BugFilterScreen extends StatelessWidget {
  final List<BugModel> bugs;
  const BugFilterScreen({super.key, required this.bugs});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BugsCubit, BugsState>(
      builder: (context, state) {
        BugsCubit cubit = context.read<BugsCubit>();
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 50.0.h,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const FilterBox(),
                        verticalSpace(20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bug Statuses ",
                              style: AppTexts.text14PrimaryNunitoSansBold,
                            ),
                            verticalSpace(10.0),
                            Wrap(
                              runSpacing: 8.0,
                              children: [
                                FilterContainer(
                                  text: 'All Statuses',
                                  isSelected:
                                      cubit.bugStatusSelected == 'All Statuses',
                                  onTap: () =>
                                      cubit.selectBugStatus('All Statuses'),
                                ),
                                ...[
                                  inProgress,
                                  done,
                                  toDo,
                                ].map(
                                  (e) => FilterContainer(
                                    text: e,
                                    isSelected: cubit.bugStatusSelected == e,
                                    onTap: () => cubit.selectBugStatus(e),
                                  ),
                                ),
                              ],
                            ),
                            verticalSpace(15.0),
                            const CustomDivider(),
                          ],
                        ),
                        verticalSpace(30.0),
                      ],
                    ),
                  ),
                ),
                verticalSpace(10.0),
                BugFilterSubmit(
                  bugs: bugs,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
