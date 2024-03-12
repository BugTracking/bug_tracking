import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/notfications/ui/widgets/notfications_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bug_tracking/features/notfications/data/models/notfication_response_model.dart';

class NotficationsHeader extends StatelessWidget {
  final NotificationData notfication;
  const NotficationsHeader({Key? key, required this.notfication})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(12),
        Image.asset('assets/icons/notfications_icon.png'),
        horizontalSpace(16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                notfication.notificationId.title,
                style: AppTexts.text13OnBackgroundNubitoSansBold,
              ),
              verticalSpace(5.0),
              NotficationsBody(
                notfication: notfication,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
