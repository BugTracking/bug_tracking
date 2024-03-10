import 'package:bug_tracking/core/data/app_data.dart';
import 'package:bug_tracking/core/widgets/add_container.dart';
import 'package:bug_tracking/features/add_bug/logic/cubit/add_bug_cubit.dart';
import 'package:bug_tracking/features/add_bug/logic/cubit/add_bug_state.dart';
import 'package:bug_tracking/features/add_bug/ui/widgets/add_bug_members_selection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AssignedToContainer extends StatelessWidget {
  const AssignedToContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          enableDrag: true,
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          builder: (_) => BlocProvider.value(
            value: context.read<AddBugCubit>(),
            child: BlocBuilder<AddBugCubit, AddBugState>(
              builder: (context, state) {
                AddBugCubit cubit = context.read<AddBugCubit>();
                return AddBugMembersSelection(
                  onChanged: (member) {
                    cubit.emitSelectMembersState(member);
                  },
                  members: userData.members,
                  memberIds: cubit.memberIds,
                );
              },
            ),
          ),
        );
      },
      child: const AddContainer(
        title: 'Assigned To',
      ),
    );
  }
}
