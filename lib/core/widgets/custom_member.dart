import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMember extends StatelessWidget {
  final String? image;
  final String name;
  final String body;
  const CustomMember({
    super.key,
    required this.image,
    required this.name,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 32.r,
          backgroundColor: AppColor.bluish,
          child: ClipOval(
            child: CircleAvatar(
              radius: 30.r,
              backgroundColor: Colors.white,
              child: image != null && image != ''
                  ? CachedNetworkImage(
                      imageUrl: image ?? '',
                      placeholder: (context, url) => const CustomShimmer(),
                      errorWidget: (context, url, error) => Container(
                        color: Colors.white,
                        child: Image.asset(
                          'assets/images/male.png',
                        ),
                      ),
                      color: Colors.white,
                      filterQuality: FilterQuality.high,
                      imageBuilder: (context, imageProvider) {
                        return Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    )
                  : Image.asset(
                      'assets/images/male.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
            ),
          ),
        ),
        horizontalSpace(10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: AppTexts.text16OnBackgroundNunitoSansSemiBold,
              ),
              verticalSpace(3.0),
              Text(
                body,
                style: AppTexts.text14GreyCairoSemiBold,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
