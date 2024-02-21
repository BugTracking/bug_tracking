import 'package:bug_tracking/features/on_boarding/ui/widgets/skip_text_button.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          SkipTextButton(),
        ],
      ),
    );
  }
}
