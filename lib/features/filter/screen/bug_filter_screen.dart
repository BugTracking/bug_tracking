import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:bug_tracking/core/widgets/custom_divider.dart';
import 'package:bug_tracking/core/widgets/custom_outlined_button.dart';
import 'package:bug_tracking/features/filter/screen/project_filter_screen.dart';
import 'package:bug_tracking/features/filter/widgets/bug_date.dart';
import 'package:bug_tracking/features/filter/widgets/filter_container.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BugFilterScreen extends StatefulWidget {
  const BugFilterScreen({Key? key}) : super(key: key);

  @override
  State<BugFilterScreen> createState() => _BugFilterScreenState();
}

class _BugFilterScreenState extends State<BugFilterScreen> {
  List<String> projectNames = [
    'All',
    'Saveto' 'BugTracker',
    'Salla',
    'ToDo',
    'Bug'
  ];
  int projectNameSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.0.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Filter ",
                    style: AppTexts.text24OnBackgroundNunitoSansSemiBold,
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProjectFilterScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(10.0),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                      child: const Icon(
                        Icons.close,
                        size: 30.0,
                      ),
                    ),
                  ),
                ],
              ),
              verticalSpace(20.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Project Name ",
                    style: AppTexts.text14PrimaryNunitoSansBold,
                  ),
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
                  const Divider(
                    indent: 16,
                    endIndent: 16,
                    color: AppColor.lightGrey,
                  ),
                ],
              ),
              verticalSpace(15.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Dug Status ",
                      style: AppTexts.text14PrimaryNunitoSansBold),
                  verticalSpace(10.0),
                  const Row(
                    children: [
                      FilterContainer(
                        text: "TO Do",
                        isSelected: false,
                      ),
                      FilterContainer(
                        text: "In progress",
                        isSelected: false,
                      ),
                      FilterContainer(
                        text: "Done",
                        isSelected: false,
                      ),
                    ],
                  ),
                  verticalSpace(20.0.h),
                  const CustomDivider(),
                  verticalSpace(15.0.h),
                  const DugDate(
                    dateName: "Created date ",
                    date: '13/2/2024',
                  ),
                  verticalSpace(15.0),
                  const DugDate(date: '', dateName: "Last Updated "),
                ],
              ),
              verticalSpace(25.0.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                      width: 150.0.w,
                      child: CustomOutlinedButton(
                        text: 'Reset',
                        onPressed: () {},
                      )),
                  horizontalSpace(10.0),
                  SizedBox(
                      width: 150.0.w,
                      child: CustomButton(
                        text: 'Apply',
                        onPressed: () {},
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
