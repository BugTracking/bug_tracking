import 'package:bug_tracking/core/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomLoadingIndicator extends StatelessWidget {
  final double size;
  const CustomLoadingIndicator({super.key, this.size = 40.0});

  @override
  Widget build(BuildContext context) {
    return SpinKitChasingDots(
      color: AppColor.bluish,
      size: size,
    );
  }
}
