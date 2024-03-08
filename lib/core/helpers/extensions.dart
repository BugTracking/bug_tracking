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

extension StringEx on String {
  String extractDate() {
    return split('T')[0];
  }

  String extractTime() {
    return split('T')[1];
  }

  String extractTimeOnly() {
    return split('T')[1].split('.')[0];
  }

  String toShortcutEachWord() {
    if (split(' ').length > 1) {
      return '${split(' ')[0][0].toUpperCase()}${split(' ')[1][0].toUpperCase()}';
    }
    return '${this[0]}${this[1]}';
  }

  String toShortcut() {
    if (split(' ').length > 1) {
      return '${split(' ')[0]} ${split(' ')[1]}';
    }
    return this;
  }
}
