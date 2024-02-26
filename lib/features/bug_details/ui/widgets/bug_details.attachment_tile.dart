import 'package:bug_tracking/core/widgets/custom_shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BugDetailesAttachmentsTile extends StatelessWidget {
  const BugDetailesAttachmentsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.w,
      height: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: CachedNetworkImage(
        imageUrl:
            'https://www.zdnet.com/a/img/resize/0c3f1da3f6084ffcf264800296880aaeb28d1e3e/2023/03/18/dcbbf411-b72c-4fab-96e5-05ee22f68fe2/summarize-article-code.jpg?auto=webp&width=1280',
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
