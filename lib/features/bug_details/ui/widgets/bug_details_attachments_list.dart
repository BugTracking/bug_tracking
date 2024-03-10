import 'package:bug_tracking/features/bug_details/data/models/bug_details_response_body.dart';
import 'package:bug_tracking/features/bug_details/logic/cubit/bug_details_cubit.dart';
import 'package:bug_tracking/features/bug_details/ui/widgets/bug_details.attachment_tile.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BugDetailsAttachmentsList extends StatelessWidget {
  const BugDetailsAttachmentsList({super.key});

  @override
  Widget build(BuildContext context) {
    BugDetailsModel bugDetailsModel =
        context.read<BugDetailsCubit>().bugDetailsModel!;
    return CarouselSlider.builder(
      itemCount: bugDetailsModel.attachments.length,
      itemBuilder: (context, index, realIndex) {
        BugAttachmentModel bugAttachmentModel =
            bugDetailsModel.attachments[index];
        return BugDetailesAttachmentsTile(
          bugAttachmentModel: bugAttachmentModel,
        );
      },
      options: CarouselOptions(
        height: 150.h,
        viewportFraction: 0.4,
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        animateToClosest: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
