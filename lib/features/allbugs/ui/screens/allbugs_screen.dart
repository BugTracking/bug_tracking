import 'package:bug_tracking/core/di/dependency_injection.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/allbugs/logic/cubit/bugs_cubit.dart';
import 'package:bug_tracking/features/allbugs/logic/cubit/bugs_state.dart';
import 'package:bug_tracking/features/allbugs/ui/widgets/bugs_list.dart';
import 'package:bug_tracking/features/filter/screen/bug_filter_screen.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllBugsScreen extends StatelessWidget {
  final List<BugModel> bugs;
  const AllBugsScreen({Key? key, required this.bugs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BugsCubit>(),
      child: BlocBuilder<BugsCubit, BugsState>(
        builder: (context, state) {
          BugsCubit cubit = context.read<BugsCubit>();
          return Scaffold(
            appBar: AppBar(
              title: const Text('Bugs'),
              actions: [
                IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (_) => BlocProvider.value(
                        value: context.read<BugsCubit>(),
                        child: BugFilterScreen(
                          bugs: bugs,
                        ),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.settings_input_component_outlined,
                    color: AppColor.blackish,
                    size: 25,
                  ),
                ),
              ],
            ),
            body: BlocBuilder<BugsCubit, BugsState>(
              builder: (context, state) {
                if (cubit.filteredBugs != null && cubit.filteredBugs!.isEmpty) {
                  return Center(
                    child: Text(
                      'No Bugs Found',
                      style: AppTexts.text16OnBackgroundNunitoSansBold,
                    ),
                  );
                }
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0.w,
                    vertical: 20.0.h,
                  ),
                  child: BugsList(
                    bugs: cubit.filteredBugs != null
                        ? cubit.filteredBugs ?? []
                        : bugs,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
