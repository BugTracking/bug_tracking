import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(onPressed: () {}, text: 'Save');
  }
}
