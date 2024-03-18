import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/features/allbugs/logic/cubit/bugs_cubit.dart';
import 'package:bug_tracking/features/filter/widgets/filter_buttons.dart';
import 'package:bug_tracking/features/home/data/models/bugs_response_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BugFilterSubmit extends StatelessWidget {
  final List<BugModel> bugs;
  const BugFilterSubmit({super.key, required this.bugs});

  @override
  Widget build(BuildContext context) {
    return FilterButtons(
      resetOnPressed: () {
        context.read<BugsCubit>().emitResetFilter();
        context.pop();
      },
      applyOnPressed: () {
        context.read<BugsCubit>().emitFilterBugs(bugs);
        context.pop();
      },
    );
  }
}
