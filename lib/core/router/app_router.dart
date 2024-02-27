import 'package:bug_tracking/core/di/dependency_injection.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/features/get_started/ui/screens/get_started_screen.dart';
import 'package:bug_tracking/features/home/ui/screens/home_screen.dart';
import 'package:bug_tracking/features/on_boarding/logic/cubit/on_boarding_cubit.dart';
import 'package:bug_tracking/features/on_boarding/ui/screens/on_boarding_screen.dart';
import 'package:bug_tracking/features/project_bugs/ui/screens/project_bugs_screen.dart';
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
      case Routes.getStarted:
        return MaterialPageRoute(
          builder: (_) => const GetStartedScreen(),
        );

      case Routes.projectBugs:
        return MaterialPageRoute(
          builder: (context) => const ProjectBugsScreen(),
        );

      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      default:
        return null;
    }
  }
}
