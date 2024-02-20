import 'package:bug_tracking/bug_tracking_app.dart';
import 'package:bug_tracking/core/di/dependency_injection.dart';
import 'package:bug_tracking/core/router/app_router.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  runApp(BugTrackingApp(
    appRouter: AppRouter(),
  ));
}
