import 'package:bloc/bloc.dart';
import 'package:bug_tracking/features/on_boarding/data/on_boarding.dart';
import 'package:bug_tracking/features/on_boarding/logic/cubit/on_boarding_state.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  List<OnBoarding> onBoardingList = [
    OnBoarding(
      'assets/images/on_boarding_1.png',
      'Welcome to BugTracker !',
      'Which designed to streamline your bug tracking process, making it simple and effective.',
    ),
    OnBoarding(
      'assets/images/on_boarding_2.png',
      'Collaborate Seamlessly',
      'BugTracker facilitates seamless collaboration among your team members.',
    ),
    OnBoarding(
      'assets/images/on_boarding_3.png',
      'Effortless Bug Tracking',
      "let's empowers you to identify, track, and resolve bugs seamlessly. Let's get started!",
    ),
  ];
  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();
  void emitChangePageState(int index) {
    currentIndex = index;
    carouselController.animateToPage(
      currentIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
    emit(OnBoardingChangePage());
  }
}
