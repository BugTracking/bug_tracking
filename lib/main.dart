import 'package:bug_tracking/bug_tracking_app.dart';
import 'package:bug_tracking/core/di/dependency_injection.dart';
import 'package:bug_tracking/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  // for splash screen duration
  await Future.delayed(
    const Duration(milliseconds: 1500),
  );

  runApp(BugTrackingApp(
    appRouter: AppRouter(),
  ));
}
