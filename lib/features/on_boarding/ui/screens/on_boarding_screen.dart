import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/features/on_boarding/ui/widgets/on_boarding_button.dart';
import 'package:bug_tracking/features/on_boarding/ui/widgets/on_boarding_indicator.dart';
import 'package:bug_tracking/features/on_boarding/ui/widgets/on_boarding_page_view.dart';
import 'package:bug_tracking/features/on_boarding/ui/widgets/skip_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          SkipTextButton(),
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Column(
          children: [
            verticalSpace(context.height * 0.06),
            const OnBoardingPageView(),
            verticalSpace(context.height * 0.05),
            const OnBoardingIndicator(),
            verticalSpace(context.height * 0.05),
            const OnBoardingButton(),
          ],
        ),
      ),
    );
  }
}
