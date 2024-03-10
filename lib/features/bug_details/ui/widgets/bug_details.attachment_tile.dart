import 'package:bug_tracking/core/widgets/custom_shimmer.dart';
import 'package:bug_tracking/features/bug_details/data/models/bug_details_response_body.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BugDetailesAttachmentsTile extends StatelessWidget {
  final BugAttachmentModel bugAttachmentModel;
  const BugDetailesAttachmentsTile(
      {super.key, required this.bugAttachmentModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: CachedNetworkImage(
        imageUrl: bugAttachmentModel.url,
        placeholder: (context, url) => const CustomShimmer(),
        errorWidget: (context, url, error) => const CustomShimmer(),
        fit: BoxFit.cover,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
