import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_loading_indicator.dart';
import 'package:bug_tracking/features/add_project/logic/cubit/add_project_cubit.dart';
import 'package:bug_tracking/features/add_project/logic/cubit/add_project_state.dart';
import 'package:bug_tracking/features/add_project/ui/widgets/add_project_form.dart';
import 'package:bug_tracking/features/add_project/ui/widgets/save_project_submit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddProjectScreen extends StatelessWidget {
  const AddProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Project'),
      ),
      body: BlocBuilder<AddProjectCubit, AddProjectState>(
        builder: (context, state) {
          if (state is GetCateogriesLoading) {
            return const Center(
              child: CustomLoadingIndicator(),
            );
          }
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0.w,
                vertical: 20.h,
              ),
              child: Column(
                children: [
                  const AddProjectForm(),
                  verticalSpace(10.0),
                  const SaveProjectSubmit(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
