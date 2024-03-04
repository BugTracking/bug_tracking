import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';

class FilterBox extends StatelessWidget {
  const FilterBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Filter ",
          style: AppTexts.text24OnBackgroundNunitoSansSemiBold,
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: ElevatedButton(
            onPressed: () {
              context.pop();
            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10.0),
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            ),
            child: const Icon(
              Icons.close,
              size: 26.0,
              color: AppColor.blackish,
            ),
          ),
        ),
      ],
    );
  }
}
