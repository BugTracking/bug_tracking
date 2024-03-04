import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_divider.dart';
import 'package:bug_tracking/features/filter/widgets/filter_box.dart';
import 'package:bug_tracking/features/filter/widgets/filter_container.dart';
import 'package:bug_tracking/features/filter/widgets/project_filter_submit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bug_tracking/features/filter/widgets/bug_date.dart';

class ProjectFilterScreen extends StatefulWidget {
  const ProjectFilterScreen({super.key});

  @override
  State<ProjectFilterScreen> createState() => _ProjectFilterScreenState();
}

class _ProjectFilterScreenState extends State<ProjectFilterScreen> {
  List<String> projectNames = [
    'All',
    'Saveto'
        'hello',
    'ToDo',
    'Bug'
  ];
  int projectNameSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.0.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const FilterBox(),
            verticalSpace(20.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Project Name ",
                    style: AppTexts.text14PrimaryNunitoSansBold),
                verticalSpace(10.0),
                Wrap(
                  runSpacing: 8.0,
                  children: List.generate(
                    projectNames.length,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          projectNameSelected = index;
                        });
                      },
                      child: FilterContainer(
                        text: projectNames[index],
                        isSelected: projectNameSelected == index,
                      ),
                    ),
                  ),
                ),
                verticalSpace(15.0),
                const CustomDivider(),
                const DugDate(
                  dateName: "Created date ",
                  date: '13/2/2024',
                ),
                const DugDate(date: '', dateName: "Last Updated "),
              ],
            ),
            verticalSpace(30.0),
            const Spacer(),
            const ProjectFilterSubmit(),
          ],
        ),
      ),
    );
  }
}
