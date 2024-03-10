import 'package:bug_tracking/core/helpers/constants.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_drop_down_list.dart';
import 'package:bug_tracking/features/bug_details/logic/cubit/bug_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_text_field.dart';

class EditBugForm extends StatelessWidget {
  const EditBugForm({super.key});

  @override
  Widget build(BuildContext context) {
    BugDetailsCubit cubit = context.read<BugDetailsCubit>();
    return Form(
      key: cubit.editFormKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomTextField(
            controller: cubit.titleController,
            hintText: 'Enter bug title',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
          ),
          verticalSpace(10.0),
          CustomTextField(
            controller: cubit.descriptionController,
            hintText: 'Enter bug summary',
            keyboardType: TextInputType.multiline,
            textInputAction: TextInputAction.newline,
            maxLines: null,
          ),
          verticalSpace(10.0),
          CustomDropDownList(
            items: cubit.categories?.map((e) => e.title).toList() ?? [],
            hintText: cubit.bugDetailsModel?.bug.category.title ?? '',
            selectedItem: cubit.categorySelected,
            onChanged: (value) => cubit.selectCategory(value ?? ''),
            errorMsg: null,
          ),
          verticalSpace(10.0),
          CustomDropDownList(
            items: [toDo, inProgress, done],
            hintText: cubit.bugDetailsModel?.bug.status ?? '',
            selectedItem: cubit.statusSelected,
            onChanged: (value) => cubit.selectStatus(value ?? ''),
            errorMsg: null,
          ),
          verticalSpace(10.0),
          CustomDropDownList(
            items: [lowPriority, mediumPriority, highPriority],
            hintText: cubit.bugDetailsModel?.bug.priority ?? '',
            selectedItem: cubit.prioritySelected,
            onChanged: (value) => cubit.selectPriority(value ?? ''),
            errorMsg: null,
          ),
          verticalSpace(10.0),
          CustomDropDownList(
            items: [lowSeverity, mediumSeverity, highSeverity],
            hintText: cubit.bugDetailsModel?.bug.severity ?? '',
            selectedItem: cubit.severitySelected,
            onChanged: (value) => cubit.selectSeverity(value ?? ''),
            errorMsg: null,
          ),
        ],
      ),
    );
  }
}
