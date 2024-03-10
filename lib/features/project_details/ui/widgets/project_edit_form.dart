import 'package:bug_tracking/core/helpers/constants.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_drop_down_list.dart';
import 'package:bug_tracking/core/widgets/custom_text_field.dart';
import 'package:bug_tracking/features/project_details/logic/cubit/project_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectEditForm extends StatelessWidget {
  final BuildContext context;
  const ProjectEditForm({super.key, required this.context});

  @override
  Widget build(BuildContext context) {
    ProjectDetailsCubit cubit = this.context.read<ProjectDetailsCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        children: <Widget>[
          CustomTextField(
            controller: cubit.projectTitleController,
            hintText: 'Project Title',
            keyboardType: TextInputType.text,
            errorMsg: 'Please enter project title',
            textInputAction: TextInputAction.next,
          ),
          verticalSpace(10.0),
          CustomTextField(
            controller: cubit.projectDescriptionController,
            hintText: 'Project Description',
            keyboardType: TextInputType.multiline,
            textInputAction: TextInputAction.newline,
            maxLines: null,
            errorMsg: 'Please enter project description',
          ),
          verticalSpace(10),
          CustomDropDownList(
            items: [openStatus, closedStatus, notStartedYetStatus],
            hintText: 'Project Status',
            selectedItem: cubit.projectStatus ?? '',
            onChanged: (value) =>
                cubit.emitChangeProjectStatusState(value ?? ''),
            errorMsg: 'Please select project status',
          ),
        ],
      ),
    );
  }
}
