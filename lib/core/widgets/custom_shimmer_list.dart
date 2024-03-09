import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_shimmer.dart';
import 'package:flutter/material.dart';

class CustomShimmerList extends StatelessWidget {
  const CustomShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const CustomShimmer(),
      separatorBuilder: (context, index) => verticalSpace(10.0),
      itemCount: 30,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
  }
}
