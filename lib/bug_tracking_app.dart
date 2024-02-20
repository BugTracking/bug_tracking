import 'package:bug_tracking/core/router/app_router.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BugTrackingApp extends StatelessWidget {
  final AppRouter appRouter;
  const BugTrackingApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoarding,
        onGenerateRoute: appRouter.onGeneratedRoute,
      ),
    );
  }
}
