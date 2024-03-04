import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NotficationsHeader extends StatelessWidget {
  const NotficationsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        verticalSpace(12),
        Image.asset('assets/icons/notfications_icon.png'),
        horizontalSpace(16),
        Expanded(
          child: Text(
            'Notfications Tile',
            style: AppTexts.text12OnBackgroundNunitoSansSemiBold,
          ),
        ),
      ],
    );
  }
}
