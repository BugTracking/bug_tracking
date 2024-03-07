import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_text_field.dart';
import 'package:bug_tracking/core/widgets/selected_items.dart';
import 'package:bug_tracking/features/add_project/logic/cubit/add_project_cubit.dart';
import 'package:bug_tracking/features/add_project/logic/cubit/add_project_state.dart';
import 'package:bug_tracking/features/add_project/ui/widgets/add_project_members_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProjectForm extends StatefulWidget {
  const AddProjectForm({super.key});

  @override
  State<AddProjectForm> createState() => _AddProjectFormState();
}

class _AddProjectFormState extends State<AddProjectForm> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddProjectCubit, AddProjectState>(
      builder: (context, state) {
        AddProjectCubit cubit = context.read<AddProjectCubit>();
        return Form(
          key: cubit.formKey,
          child: Column(
            children: [
              CustomTextField(
                controller: cubit.titleController,
                hintText: 'Project Title',
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                errorMsg: 'Please enter project title',
              ),
              verticalSpace(10.0),
              CustomTextField(
                controller: cubit.descriptionController,
                hintText: 'Project Description',
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                errorMsg: 'Please enter project description',
              ),
              verticalSpace(10.0),
              const AddProjectMembersContainer(),
              verticalSpace(10.0),
              SelectedItems(
                onClosePressed: (index) => cubit.removeMember(
                  cubit.memberIds[index],
                  cubit.memberNames[index],
                ),
                items: cubit.memberNames,
              ),
            ],
          ),
        );
      },
    );
  }
}
