import 'package:bug_tracking/features/notfications/ui/widgets/notfications_header.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/features/notfications/data/models/notfication_response_model.dart';

class NotificationsTile extends StatelessWidget {
  final NotificationData notfication;
  const NotificationsTile({Key? key, required this.notfication})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xffE9EAEC),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NotficationsHeader(
                notfication: notfication,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
