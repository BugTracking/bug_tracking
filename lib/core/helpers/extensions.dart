import 'package:flutter/material.dart';

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
