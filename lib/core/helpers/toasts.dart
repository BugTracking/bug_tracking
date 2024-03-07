import 'package:bug_tracking/core/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToast({required String message, bool isError = false}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.TOP,
    timeInSecForIosWeb: 3,
    backgroundColor: isError ? AppColor.redish : AppColor.greenish,
    textColor: Colors.white,
    fontSize: 16.0.sp,
  );
}
