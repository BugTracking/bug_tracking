import 'dart:io';

import 'package:bug_tracking/core/data/app_data.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/widgets/custom_shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAvatar extends StatelessWidget {
  final File? image;
  const CustomAvatar({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 52.r,
      backgroundColor: AppColor.bluish,
      child: ClipOval(
        child: CircleAvatar(
          radius: 50.r,
          backgroundColor: Colors.white,
          child: image == null
              ? CachedNetworkImage(
                  imageUrl: userData.user.avatar ?? '',
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
              : Image.file(
                  image ?? File(''),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
        ),
      ),
    );
  }
}
