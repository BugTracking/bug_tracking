import 'package:bug_tracking/core/helpers/constants.dart';
import 'package:flutter/material.dart';

class AppColor {
  AppColor._();

  static const Color bluish = Color(0xff2395FF);

  static const Color organish = Color(0xffE5A003);

  static const Color yellowish = Color(0xffFDDA42);

  static const Color greyish = Color(0xff818181);

  static const Color blackish = Color(0xff303030);

  static const Color gradientYellowOrange = Color(0xffF1BD22);

  static const Color greenish = Color(0xff007B22);

  static const Color lightGrey = Color(0xffE9EAEC);

  static const Color grayWithScale = Color(0xffA0AEC0);

  static const Color darkYellowish = Color(0xffD9A600);

  static const Color redish = Color(0xffE93C3C);

  static const Color semiLightGreyish = Color(0xffD9D9D9);

  static const Color darkGreyish = Color(0xffB4B4B4);
}

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

Color getProjectStatusColor(String text) {
  if (text == open) return AppColor.bluish;
  if (text == inProgress) return AppColor.yellowish;
  return AppColor.redish;
}
