import 'package:bug_tracking/core/helpers/spacing.dart';

import 'package:bug_tracking/core/widgets/custom_drop_down_list.dart';
import 'package:bug_tracking/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddBugForm extends StatefulWidget {
  const AddBugForm({super.key});

  @override
  State<AddBugForm> createState() => _AddBugFormState();
}

class _AddBugFormState extends State<AddBugForm> {
  String categorySelected = '';
  String prioritySelected = '';
  String severitySelected = '';
  String statusSeleted = '';
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextField(
            controller: TextEditingController(),
            hintText: 'Bug Title',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            errorMsg: 'Please enter bug title',
          ),
          verticalSpace(10.0),
          CustomDropDownList(
            items: const ['Issue', 'Bug', 'Ui'],
            hintText: 'Category',
            selectedItem: categorySelected,
            onChanged: (value) {
              setState(() {
                categorySelected = value ?? '';
              });
            },
            errorMsg: 'Choose a category',
          ),
          verticalSpace(10.0),
          CustomTextField(
            controller: TextEditingController(),
            hintText: 'Summary',
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            errorMsg: 'Please enter summary',
          ),
          verticalSpace(10.0),
          CustomDropDownList(
            items: const ['High', 'Medium', 'Low'],
            hintText: 'Priority',
            selectedItem: prioritySelected,
            onChanged: (value) {
              setState(() {
                prioritySelected = value ?? '';
              });
            },
            errorMsg: 'Choose a priority',
          ),
          verticalSpace(10.0),
          CustomDropDownList(
            items: const ['High', 'Medium', 'Low'],
            hintText: 'Severity',
            selectedItem: severitySelected,
            onChanged: (value) {
              setState(() {
                severitySelected = value ?? '';
              });
            },
            errorMsg: 'Choose a severity',
          ),
          verticalSpace(10.0),
          CustomDropDownList(
            items: const ['To Do', 'In Progress', 'Done'],
            hintText: 'Status',
            selectedItem: statusSeleted,
            onChanged: (value) {
              setState(() {
                statusSeleted = value ?? '';
              });
            },
            errorMsg: 'Choose a status',
          ),
        ],
      ),
    );
  }
}
