import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/features/get_started/ui/widgets/get_started_buttons.dart';
import 'package:bug_tracking/features/get_started/ui/widgets/get_started_image.dart';
import 'package:bug_tracking/features/get_started/ui/widgets/get_started_title_desc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const GetStartedImage(),
                  verticalSpace(20),
                  const GetStartedTitleDescription(),
                ],
              ),
            ),
            verticalSpace(20.0),
            const GetStartedButtons(),
          ],
        ),
      ),
    );
  }
}
