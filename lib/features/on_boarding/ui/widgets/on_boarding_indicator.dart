import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/features/on_boarding/logic/cubit/on_boarding_cubit.dart';
import 'package:bug_tracking/features/on_boarding/logic/cubit/on_boarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingIndicator extends StatelessWidget {
  const OnBoardingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        return AnimatedSmoothIndicator(
          activeIndex: context.read<OnBoardingCubit>().currentIndex,
          count: context.read<OnBoardingCubit>().onBoardingList.length,
          onDotClicked: (index) {
            context.read<OnBoardingCubit>().emitChangePageState(index);
          },
          effect: ExpandingDotsEffect(
            dotHeight: 10.h,
            dotWidth: 14.w,
            dotColor: const Color(0xffD9D9D9),
            activeDotColor: AppColor.gradientYellowOrange,
          ),
        );
      },
    );
  }
}
