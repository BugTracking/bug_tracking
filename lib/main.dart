import 'package:bug_tracking/bug_tracking_app.dart';
import 'package:bug_tracking/core/di/dependency_injection.dart';
import 'package:bug_tracking/core/router/app_router.dart';
import 'package:bug_tracking/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(BugTrackingApp(
    appRouter: AppRouter(),
  ));
}
