import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/add_bug/ui/widgets/members_selection_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AssignedToContainer extends StatelessWidget {
  const AssignedToContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          enableDrag: true,
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          builder: (context) => const MembersSelectionBottomSheet(),
        );
      },
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: 16.h,
          horizontal: 16.0.w,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.lightGrey,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            Text(
              'Assigned to',
              style: AppTexts.text14GreyNunitoSansSemiBold,
            ),
            const Spacer(),
            const Icon(
              Icons.add,
              color: AppColor.bluish,
            ),
          ],
        ),
      ),
    );
  }
}
