import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:bug_tracking/core/widgets/custom_divider.dart';
import 'package:bug_tracking/core/widgets/custom_outlined_button.dart';
import 'package:bug_tracking/features/filter/widgets/filter_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bug_tracking/features/filter/widgets/bug_date..dart';

class ProjectFilterScreen extends StatefulWidget {
  const ProjectFilterScreen({super.key});

  @override
  State<ProjectFilterScreen> createState() => _ProjectFilterScreenState();
}

class _ProjectFilterScreenState extends State<ProjectFilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(10.0),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                    child: Text(
                      "x",
                      style: AppTexts.text24OnBackgroundNunitoSansSemiBold,
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
                Text("Project Name ",
                    style: AppTexts.text14PrimaryNunitoSansBold),
                verticalSpace(10.0),
                const Row(
                  children: [
                    FilterContainer(
                      text: "all",
                    ),
                    FilterContainer(
                      text: "Drug all",
                    ),
                    FilterContainer(
                      text: "Saveto",
                    ),
                  ],
                ),
                verticalSpace(10.0),
                const FilterContainer(
                  text: "Saveto",
                ),
                verticalSpace(15.0),
                const CustomDivider(),
                const DugDateScreen(
                  DateName: "Created date ",
                  Date: '13/2/2024',
                ),
                verticalSpace(15.0),
                const DugDateScreen(Date: '', DateName: "Last Updated "),
              ],
            ),
            verticalSpace(30.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 150.0.w,
                    child: CustomOutlinedButton(
                      text: 'Reset',
                      onPressed: () {},
                    )),
                horizontalSpace(10.0.w),
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
    );
  }
}
