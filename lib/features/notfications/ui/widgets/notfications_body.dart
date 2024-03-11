import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/helpers/time_ago.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/features/notfications/data/models/notfication_response_model.dart';

class NotficationsBody extends StatelessWidget {
  final NotificationData notfication;
  const NotficationsBody({Key? key, required this.notfication})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          notfication.notificationId.content,
          textAlign: TextAlign.left,
          style: AppTexts.text16GreyNunitoSansRegular,
        ),
        verticalSpace(12),
        Row(
          children: [
            const Icon(
              Icons.access_alarm,
              color: AppColor.greyish,
              size: 18.0,
            ),
            horizontalSpace(2.0),
            Text(
              getTimeAgo(
                createdTime: DateTime(
                  int.parse(notfication.time.extractDate().split('-')[0]),
                  int.parse(notfication.time.extractDate().split('-')[1]),
                  int.parse(notfication.time.extractDate().split('-')[2]),
                  int.parse(notfication.time.extractTime().split(':')[0]),
                  int.parse(notfication.time.extractTime().split(':')[1]),
                ),
              ),
              style: AppTexts.text16GreyNunitoSansRegular,
            ),
          ],
        ),
      ],
    );
  }
}
