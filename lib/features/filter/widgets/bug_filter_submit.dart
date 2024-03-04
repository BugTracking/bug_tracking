import 'package:bug_tracking/features/filter/widgets/filter_buttons.dart';
import 'package:flutter/material.dart';

class BugFilterSubmit extends StatelessWidget {
  const BugFilterSubmit({super.key});

  @override
  Widget build(BuildContext context) {
    return FilterButtons(
      resetOnPressed: () {},
      applyOnPressed: () {},
    );
  }
}
