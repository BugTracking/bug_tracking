import 'package:bug_tracking/features/add_bug/logic/cubit/add_bug_cubit.dart';
import 'package:bug_tracking/features/add_bug/logic/cubit/add_bug_state.dart';
import 'package:bug_tracking/features/add_bug/ui/widgets/add_bug_attachments_list.dart';
import 'package:bug_tracking/features/add_bug/ui/widgets/add_bug_upload_attachments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddBugAttachments extends StatelessWidget {
  const AddBugAttachments({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddBugCubit, AddBugState>(
      builder: (context, state) {
        if (context.read<AddBugCubit>().attachments.isEmpty) {
          return const AddBugUploadAttachments();
        }
        return const AddBugAttachmentsList();
      },
    );
  }
}
