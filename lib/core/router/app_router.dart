import 'package:bug_tracking/core/di/dependency_injection.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/features/on_boarding/logic/cubit/on_boarding_cubit.dart';
import 'package:bug_tracking/features/on_boarding/ui/screens/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<OnBoardingCubit>(
            create: (context) => getIt(),
            child: const OnBoardingScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
