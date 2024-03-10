import 'package:bug_tracking/core/widgets/selected_items.dart';
import 'package:bug_tracking/features/add_bug/logic/cubit/add_bug_cubit.dart';
import 'package:bug_tracking/features/add_bug/logic/cubit/add_bug_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddBugMembersSelected extends StatelessWidget {
  const AddBugMembersSelected({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddBugCubit, AddBugState>(
      builder: (context, state) {
        AddBugCubit cubit = context.read<AddBugCubit>();
        return SelectedItems(
          items: cubit.memberNames,
          onClosePressed: (index) => cubit.removeMember(
            cubit.memberIds[index],
            cubit.memberNames[index],
          ),
        );
      },
    );
  }
}
