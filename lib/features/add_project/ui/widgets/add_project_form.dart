import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/widgets/custom_text_field.dart';
import 'package:bug_tracking/core/widgets/selected_items.dart';
import 'package:bug_tracking/features/add_project/ui/widgets/add_members_container.dart';
import 'package:flutter/material.dart';

class AddProjectForm extends StatelessWidget {
  const AddProjectForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextField(
            controller: TextEditingController(),
            hintText: 'Project Name',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
          ),
          verticalSpace(10.0),
          CustomTextField(
            controller: TextEditingController(),
            hintText: 'Category Name',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: AppColor.bluish,
                size: 30,
              ),
            ),
          ),
          verticalSpace(10.0),
          SelectedItems(
            onClosePressed: (index) {},
            items: const ['Category 1', 'Category 2', 'Category 3'],
          ),
          verticalSpace(10.0),
          const AddMembersContainer(),
          verticalSpace(10.0),
          SelectedItems(
            onClosePressed: (index) {},
            items: const ['User 1', 'User 2', 'User 3'],
          ),
        ],
      ),
    );
  }
}
