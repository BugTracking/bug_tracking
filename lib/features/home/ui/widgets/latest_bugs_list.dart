import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/features/home/ui/widgets/latest_bugs_tile.dart';

class LatestBugsList extends StatelessWidget {
  const LatestBugsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return const LatestBugTile();
        },
        clipBehavior: Clip.none,
        separatorBuilder: (context, index) => verticalSpace(20.0),
        shrinkWrap: true,
        itemCount: 3,
      ),
    );
  }
}
