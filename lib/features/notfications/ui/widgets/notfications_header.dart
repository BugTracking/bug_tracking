import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';
class NotficationsHeader extends StatelessWidget {
  const NotficationsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
     children: [
       Row(
         children: [
           verticalSpace(12),
           Image.asset('assets/icons/notfications_icon.png'),
           horizontalSpace(16),
           Text('Notfications Tile',style: AppTexts.text12OnBackgroundNunitoSansSemiBold,
           ),
         ],
       ),
       Positioned(
         top: -10,
         right: -10,
         child: IconButton(
           onPressed: (){},
           icon:const Icon(Icons.more_horiz,
       ),
       ),
       ),
     ],
    );
  }
}
