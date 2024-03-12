import 'package:bug_tracking/core/data/app_data.dart';
import 'package:bug_tracking/core/widgets/add_container.dart';
import 'package:bug_tracking/features/add_project/logic/cubit/add_project_cubit.dart';
import 'package:bug_tracking/features/add_project/logic/cubit/add_project_state.dart';
import 'package:bug_tracking/features/add_project/ui/widgets/add_project_members_selection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProjectMembersContainer extends StatelessWidget {
  const AddProjectMembersContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('The members ${userData.members}');
        showModalBottomSheet(
          enableDrag: true,
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          builder: (_) => BlocProvider.value(
            value: context.read<AddProjectCubit>(),
            child: BlocBuilder<AddProjectCubit, AddProjectState>(
              builder: (context, state) {
                AddProjectCubit cubit = context.read<AddProjectCubit>();
                return AddProjectMembersSelection(
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
        title: 'Add Members',
      ),
    );
  }
}
