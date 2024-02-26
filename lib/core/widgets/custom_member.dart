import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomMember extends StatelessWidget {
  final String image;
  final String name;
  final String jobTitle;
  const CustomMember({
    super.key,
    required this.image,
    required this.name,
    required this.jobTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: AppColor.bluish,
              child: CircleAvatar(
                radius: 28,
                child: ClipOval(
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://scontent.fcai19-3.fna.fbcdn.net/v/t39.30808-6/371805649_3553651871514319_8256964925996912081_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeHoUobKMmx3bihlpkFxC2EpMLX6OntU1rcwtfo6e1TWt_e-VtAYynoVQBZ1Bs3MlPWbgAJREebqMRfScdtCP0ti&_nc_ohc=tgT5vP924EoAX8Kkttg&_nc_ht=scontent.fcai19-3.fna&oh=00_AfCrTWowo-1th4uHKzCKhIX1hnYatR6q7n3Od99oX6OqTw&oe=65E0794C',
                    placeholder: (context, url) => const CustomShimmer(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
            ),
          ],
        ),
        horizontalSpace(10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mohammed Adel',
                style: AppTexts.text16OnBackgroundNunitoSansSemiBold,
              ),
              verticalSpace(8.0),
              Text(
                'Software Engineer',
                style: AppTexts.text14GreyCairoSemiBold,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
