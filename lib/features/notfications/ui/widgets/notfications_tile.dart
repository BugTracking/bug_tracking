import 'package:bug_tracking/features/notfications/ui/widgets/notfications_body.dart';
import 'package:bug_tracking/features/notfications/ui/widgets/notfications_header.dart';
import 'package:flutter/material.dart';
class NotificationsTile extends StatelessWidget {
  const NotificationsTile({Key? key}) : super(key: key);

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
          child:  const Column(
            children: [
               NotficationsHeader(),

              NotficationsBody(),



            ],
          ),
        ),

      ],
    );
  }
}
