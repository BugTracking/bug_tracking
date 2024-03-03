import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:bug_tracking/core/widgets/custom_divider.dart';
import 'package:bug_tracking/core/widgets/custom_outlined_button.dart';
import 'package:bug_tracking/features/filter/screen/project_filter_screen.dart';
import 'package:bug_tracking/features/filter/widgets/bug_date..dart';
import 'package:bug_tracking/features/filter/widgets/filter_container.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BugFilterScreen extends StatefulWidget {
  const BugFilterScreen({Key? key}) : super(key: key);

  @override
  State<BugFilterScreen> createState() => _BugFilterScreenState();
}

class _BugFilterScreenState extends State<BugFilterScreen> {
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ProjectFilterScreen()));
                    },
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
                    ),
                    FilterContainer(
                      text: "In progress",
                    ),
                    FilterContainer(
                      text: "Done",
                    ),
                  ],
                ),
                verticalSpace(20.0.h),
                CustomDivider(),
                verticalSpace(15.0.h),
                const DugDateScreen(
                  DateName: "Created date ",
                  Date: '13/2/2024',
                ),
                verticalSpace(15.0),
                const DugDateScreen(Date: '', DateName: "Last Updated "),
              ],
            ),
            verticalSpace(25.0.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              // mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}
