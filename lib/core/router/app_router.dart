import 'package:bug_tracking/core/di/dependency_injection.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/router/screen_args.dart';
import 'package:bug_tracking/features/add_bug/logic/cubit/add_bug_cubit.dart';
import 'package:bug_tracking/features/add_bug/ui/screens/add_bug_screen.dart';
import 'package:bug_tracking/features/add_project/logic/cubit/add_project_cubit.dart';
import 'package:bug_tracking/features/add_project/ui/screens/add_project_screen.dart';
import 'package:bug_tracking/features/allbugs/ui/screens/allbugs_screen.dart';
import 'package:bug_tracking/features/allprojects/ui/screens/projects_screen.dart';
import 'package:bug_tracking/features/authentcation/ui/screens/login_screen.dart';
import 'package:bug_tracking/features/authentcation/ui/screens/register_screen.dart';
import 'package:bug_tracking/features/bug_details/logic/cubit/bug_details_cubit.dart';
import 'package:bug_tracking/features/bug_details/ui/screens/bug_details_screen.dart';
import 'package:bug_tracking/features/get_started/ui/screens/get_started_screen.dart';
import 'package:bug_tracking/features/home/logic/cubit/home_cubit.dart';
import 'package:bug_tracking/features/home/ui/screens/home_screen.dart';
import 'package:bug_tracking/features/members/logic/member_cubit.dart';
import 'package:bug_tracking/features/members/ui/screens/members_screen.dart';
import 'package:bug_tracking/features/on_boarding/logic/cubit/on_boarding_cubit.dart';
import 'package:bug_tracking/features/on_boarding/ui/screens/on_boarding_screen.dart';
import 'package:bug_tracking/features/project_bugs/ui/screens/project_bugs_screen.dart';
import 'package:bug_tracking/features/project_details/logic/cubit/project_details_cubit.dart';
import 'package:bug_tracking/features/project_details/ui/screens/project_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bug_tracking/features/edit_profile/ui/screens/edit_profile_screen.dart';

import '../../features/settings/ui/widgets/terms_conditions_dialog.dart';

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
        var args = settings.arguments as ProjectBugsScreenArgs;
        return MaterialPageRoute(
          builder: (context) => ProjectBugsScreen(
            bugs: args.bugs,
            projectTitle: args.projectTitle,
          ),
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
        var args = settings.arguments as BugDetailsScreenArgs;
        return MaterialPageRoute(
          builder: (context) => BlocProvider<BugDetailsCubit>(
            create: (context) => getIt<BugDetailsCubit>()
              ..emitBugDetailsState(args.bugId)
              ..emitCommentsState(args.bugId),
            child: BugDetailsScreen(
              bugId: args.bugId,
              bugTitle: args.bugTitle,
            ),
          ),
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
            create: (context) => getIt<HomeCubit>()
              ..emitUserDataState()
              ..emitProjectDataState()
              ..emitBugDataState()
              ..emitSetDeviceTokenState(),
            child: const HomeScreen(),
          ),
        );
      case Routes.editProfile:
        return MaterialPageRoute(
          builder: (context) => const EditProfileScreen(),
        );
      case Routes.allProjects:
        ProjectsScreenArgs args = settings.arguments as ProjectsScreenArgs;
        return MaterialPageRoute(
          builder: (context) => ProjectsScreen(
            projects: args.projects,
          ),
        );
      case Routes.members:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
              create: (context) => getIt<MembersCubit>()..emitMemberDataState(),
              child: const MembersScreen()),
        );
      case Routes.addBug:
        var args = settings.arguments as AddBugScreenArgs;
        return MaterialPageRoute(
          builder: (context) => BlocProvider<AddBugCubit>(
            create: (context) => getIt<AddBugCubit>()..emitCategoriesState(),
            child: AddBugScreen(
              projectId: args.projectId,
            ),
          ),
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
        BugsScreenArgs args = settings.arguments as BugsScreenArgs;
        return MaterialPageRoute(
          builder: (context) => AllBugsScreen(bugs: args.bugs),
        );

      case Routes.termsandcondtions:
        return MaterialPageRoute(
          builder: (context) => const TermsAndCondtionsDialog(),
        );
      default:
        return null;
    }
  }
}
