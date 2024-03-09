import 'package:bug_tracking/core/di/dependency_injection.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/router/screen_args.dart';
import 'package:bug_tracking/features/add_bug/ui/screens/add_bug_screen.dart';
import 'package:bug_tracking/features/add_project/logic/cubit/add_project_cubit.dart';
import 'package:bug_tracking/features/add_project/ui/screens/add_project_screen.dart';
import 'package:bug_tracking/features/allbugs/ui/screens/allbugs_screen.dart';
import 'package:bug_tracking/features/allprojects/ui/screens/projects_screen.dart';
import 'package:bug_tracking/features/authentcation/ui/screens/login_screen.dart';
import 'package:bug_tracking/features/authentcation/ui/screens/register_screen.dart';
import 'package:bug_tracking/features/bug_details/ui/screens/bug_details_screen.dart';
import 'package:bug_tracking/features/get_started/ui/screens/get_started_screen.dart';
import 'package:bug_tracking/features/home/logic/cubit/home_cubit.dart';
import 'package:bug_tracking/features/home/ui/screens/home_screen.dart';
import 'package:bug_tracking/features/members/ui/screens/members_screen.dart';
import 'package:bug_tracking/features/on_boarding/logic/cubit/on_boarding_cubit.dart';
import 'package:bug_tracking/features/on_boarding/ui/screens/on_boarding_screen.dart';
import 'package:bug_tracking/features/project_bugs/ui/screens/project_bugs_screen.dart';
import 'package:bug_tracking/features/project_details/logic/cubit/project_details_cubit.dart';
import 'package:bug_tracking/features/project_details/ui/screens/project_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bug_tracking/features/edit_profile/ui/screens/edit_profile_screen.dart';

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

      case Routes.projectDetails:
        var args = settings.arguments as ProjectDetailsScreenArgs;
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<ProjectDetailsCubit>()
              ..emitProjectDetailsState(args.projectId),
            child: ProjectDetailsScreen(
              args: args,
            ),
          ),
        );
      case Routes.bugDetails:
        return MaterialPageRoute(
          builder: (context) => const BugDetailsScreen(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case Routes.register:
        return MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        );

      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<HomeCubit>()..emitUserDataState()..emitProjectDataState()..emitBugDataState(),
            child: const HomeScreen(),
          ),
        );
      case Routes.editProfile:
        return MaterialPageRoute(
          builder: (context) => const EditProfileScreen(),
        );
      case Routes.allProjects:
        return MaterialPageRoute(
          builder: (context) => const ProjectsScreen(),
        );
      case Routes.members:
        return MaterialPageRoute(
          builder: (context) => const MembersScreen(),
        );
      case Routes.addBug:
        return MaterialPageRoute(
          builder: (context) => const AddBugScreen(),
        );
      case Routes.addProject:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) =>
                getIt<AddProjectCubit>()..emitGetCategoriesState(),
            child: const AddProjectScreen(),
          ),
        );
      case Routes.allBugs:
        return MaterialPageRoute(
          builder: (context) => const AllBugsScreen(),
        );
      default:
        return null;
    }
  }
}
