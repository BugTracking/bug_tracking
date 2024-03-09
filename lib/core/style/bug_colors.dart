import 'package:bug_tracking/core/helpers/constants.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:flutter/material.dart';

Color getPriorityOrSevertyColor(String text) {
  if (text.contains('Low')) return AppColor.redish;
  if (text.contains('Medium')) return AppColor.greenish;
  return AppColor.bluish;
}

Color getBugStatusColor(String text) {
  if (text == toDo) return AppColor.bluish;
  if (text == done) return AppColor.redish;
  return AppColor.greenish;
}
