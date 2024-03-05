import 'package:bug_tracking/core/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension NavigationEx on BuildContext {
  void push(String routerName, {Object? arguments}) {
    Navigator.pushNamed(
      this,
      routerName,
      arguments: arguments,
    );
  }

  void pushAndRemoveUntil(String routerName, {Object? arguments}) {
    Navigator.pushNamedAndRemoveUntil(
      this,
      routerName,
      (route) => false,
      arguments: arguments,
    );
  }

  void pushReplace(String routerName, {Object? arguments}) {
    Navigator.pushReplacementNamed(
      this,
      routerName,
      arguments: arguments,
    );
  }

  void pop() {
    FocusScope.of(this).unfocus();
    Future.delayed(const Duration(milliseconds: 200), () {
      Navigator.of(this).pop();
    });
  }
}

extension CustomBottomSheetExtension on BuildContext {
  void showCustomBottomSheet(List<Widget> children) {
    showModalBottomSheet(
      context: this,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        );
      },
    );
  }
}

extension SnackBarExtension on BuildContext {
  void showSnackBar(String message, {bool isError = false}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isError ? AppColor.redish : AppColor.greenish,
      ),
    );
  }
}
