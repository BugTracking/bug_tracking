import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/core/widgets/custom_shimmer_list.dart';
import 'package:bug_tracking/features/notfications/logic/cubit/notfication_cubit.dart';
import 'package:bug_tracking/features/notfications/logic/cubit/notfication_state.dart';
import 'package:bug_tracking/features/notfications/ui/widgets/notfications_tile.dart';
import 'package:flutter/material.dart';
import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bug_tracking/features/notfications/data/models/notfication_response_model.dart';
class NotficationList extends StatelessWidget {
  const NotficationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotficationCubit, NotficationState>(
      builder: (context, state) {
        NotficationCubit cubit = context.read<NotficationCubit>();
        if (cubit.notfications == null) {
          return const CustomShimmerList();
        }
        final List<NotificationData> notfication = context.read<NotficationCubit>().notfications?? [];
        if (notfication.isEmpty) {
          return Text(
            'There is no Notfications',
            style: AppTexts.text16OnBackgroundNunitoSansBold,
          );
        }
        return SafeArea(
          child: ListView.separated(
            itemBuilder: (context, index) {
              NotificationData notfi= notfication[index];
              return  NotificationsTile(notfication: notfi);
            },
            clipBehavior: Clip.none,
            separatorBuilder: (context, index) => verticalSpace(20.0),
            shrinkWrap: true,
            itemCount: notfication.isNotEmpty? notfication.length :0,
          ),
        );
      },
    );
  }
}
