import 'package:bug_tracking/core/helpers/constants.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';

import 'package:bug_tracking/core/widgets/custom_drop_down_list.dart';
import 'package:bug_tracking/core/widgets/custom_text_field.dart';
import 'package:bug_tracking/features/add_bug/logic/cubit/add_bug_cubit.dart';
import 'package:bug_tracking/features/add_bug/logic/cubit/add_bug_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddBugForm extends StatefulWidget {
  const AddBugForm({super.key});

  @override
  State<AddBugForm> createState() => _AddBugFormState();
}

class _AddBugFormState extends State<AddBugForm> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddBugCubit, AddBugState>(
      builder: (context, state) {
        AddBugCubit cubit = context.read<AddBugCubit>();
        return Form(
          key: cubit.formKey,
          child: Column(
            children: [
              CustomTextField(
                controller: cubit.titleController,
                hintText: 'Bug Title',
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                errorMsg: 'Please enter bug title',
              ),
              verticalSpace(10.0),
              CustomDropDownList(
                items: context
                    .read<AddBugCubit>()
                    .categories
                    .map((e) => e.title)
                    .toList(),
                hintText: 'Category',
                selectedItem: cubit.selectedCategory,
                onChanged: (value) => cubit.selectCategory(cubit.categories
                    .where((element) => element.title == value)
                    .first
                    .id),
                errorMsg: 'Choose a category',
              ),
              verticalSpace(10.0),
              CustomTextField(
                controller: cubit.summaryController,
                hintText: 'Summary',
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.newline,
                errorMsg: 'Please enter summary',
                maxLines: null,
              ),
              verticalSpace(10.0),
              CustomDropDownList(
                items: [highPriority, mediumPriority, lowPriority],
                hintText: 'Priority',
                selectedItem: cubit.selectedPriority,
                onChanged: (value) => cubit.selectPriority(value ?? ''),
                errorMsg: 'Choose a priority',
              ),
              verticalSpace(10.0),
              CustomDropDownList(
                items: [highSeverity, mediumSeverity, lowSeverity],
                hintText: 'Severity',
                selectedItem: cubit.selectedSeverity,
                onChanged: (value) => cubit.selectSeverity(value ?? ''),
                errorMsg: 'Choose a severity',
              ),
              verticalSpace(10.0),
              CustomDropDownList(
                items: [toDo, inProgress, done],
                hintText: 'Status',
                selectedItem: cubit.selectedStatus,
                onChanged: (value) => cubit.selectStatus(value ?? ''),
                errorMsg: 'Choose a status',
              ),
            ],
          ),
        );
      },
    );
  }
}
