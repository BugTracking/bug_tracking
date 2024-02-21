import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/features/on_boarding/logic/cubit/on_boarding_cubit.dart';
import 'package:bug_tracking/features/on_boarding/logic/cubit/on_boarding_state.dart';
import 'package:bug_tracking/features/on_boarding/ui/widgets/on_boarding_image.dart';
import 'package:bug_tracking/features/on_boarding/ui/widgets/on_boarding_title_desc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        OnBoardingCubit cubit = context.read<OnBoardingCubit>();
        return CarouselSlider.builder(
          carouselController: cubit.carouselController,
          itemCount: cubit.onBoardingList.length,
          itemBuilder: (context, index, realIndex) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OnBoardingImage(
                  image: cubit.onBoardingList[index].image,
                ),
                verticalSpace(context.height * 0.05),
                OnBoardingTitleDescription(
                  title: cubit.onBoardingList[index].title,
                  description: cubit.onBoardingList[index].description,
                ),
              ],
            );
          },
          options: CarouselOptions(
            height: double.infinity,
            viewportFraction: 1,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              cubit.emitChangePageState(index);
            },
            scrollPhysics: const BouncingScrollPhysics(),
          ),
        );
      },
    );
  }
}
