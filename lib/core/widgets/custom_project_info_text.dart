import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';

class CustomProjectInfo extends StatelessWidget {
  const CustomProjectInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Last Update on',
                    style: AppTexts.text12GreyCairoSemiBold,
                  ),
                  horizontalSpace(5),
                  Expanded(
                    child: Text(
                      '20 jun',
                      style: AppTexts.text12OnBackgroundCairoBold,
                    ),
                  ),
                ],
              ),
              verticalSpace(5.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Updated by',
                    style: AppTexts.text12GreyCairoSemiBold,
                  ),
                  horizontalSpace(5),
                  Text(
                    'Mohammed Adel',
                    style: AppTexts.text12OnBackgroundCairoBold,
                  ),
                ],
              ),
            ],
          ),
        ),
        horizontalSpace(5.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Created by',
                    style: AppTexts.text12GreyCairoSemiBold,
                  ),
                  horizontalSpace(5),
                  Expanded(
                    child: Text(
                      '20 jun',
                      style: AppTexts.text12OnBackgroundCairoBold,
                    ),
                  ),
                ],
              ),
              verticalSpace(5.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Created at',
                    style: AppTexts.text12GreyCairoSemiBold,
                  ),
                  horizontalSpace(5),
                  Expanded(
                    child: Text(
                      'Mohammed Adel',
                      style: AppTexts.text12OnBackgroundCairoBold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
