import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/home/logic/cubit/home_cubit.dart';
import 'package:bug_tracking/features/home/logic/cubit/home_state.dart';
import 'package:bug_tracking/features/home/ui/widgets/bug_project_containers.dart';
import 'package:bug_tracking/features/home/ui/widgets/latest_bugs.dart';
import 'package:bug_tracking/features/home/ui/widgets/latest_projects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBodyScreen extends StatelessWidget {
  const HomeBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: AppTexts.text21OnBackgroundColorNunitoSansBold,
        ),
      ),
      body: BlocBuilder<HomeCubit,HomeState>(
        builder: (context,state) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8.0.w),
              child: Column(
                children: [
                  verticalSpace(20),
                  const BugProjectContainers(),
                  verticalSpace(20),
                  const LatestProjects(),
                  verticalSpace(20),
                  const LatestBugs(),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
