import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

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
    final String validImageUrl =
        image != null && Uri.tryParse(image!)?.hasAbsolutePath == true
            ? image!
            : 'assets/images/male.png';
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: AppColor.bluish,
          child: CircleAvatar(
            radius: 28,
            backgroundColor: Colors.white,
            child: ClipOval(
              child: validImageUrl.startsWith('http')
                  ? CachedNetworkImage(
                      imageUrl: validImageUrl,
                      placeholder: (context, url) => const CustomShimmer(),
                      errorWidget: (context, url, error) => Container(
                        color: Colors.white,
                        child: Image.asset(
                          'assets/images/male.png',
                        ),
                      ),
                      fit: BoxFit.cover,
                      color: Colors.white,
                      filterQuality: FilterQuality.high,
                      width: double.infinity,
                      height: double.infinity,
                    )
                  : Image.asset(
                      validImageUrl,
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
