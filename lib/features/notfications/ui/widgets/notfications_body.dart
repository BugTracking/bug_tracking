import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
class NotficationsBody extends StatelessWidget {
  const NotficationsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0),
      child: Column(
        children: [
          Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            style: AppTexts.text16GreyNunitoSansRegular,
          ),
          verticalSpace(12),
           Row(
            children: [
             const Icon(Icons.access_alarm,
               color: AppColor.greyish,
               size: 18.0,
             ),
              horizontalSpace(2.0),
              Text('1 hour ago',style: AppTexts.text16GreyNunitoSansRegular,
              ),
            ],
          ),

        ],
      ),
    );
  }
}
