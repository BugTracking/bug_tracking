import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_member.dart';
import 'package:flutter/material.dart';

class ProjectDetailsMembers extends StatelessWidget {
  const ProjectDetailsMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const CustomMember(
        image:
            'https://scontent.fcai19-3.fna.fbcdn.net/v/t39.30808-6/371805649_3553651871514319_8256964925996912081_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeHoUobKMmx3bihlpkFxC2EpMLX6OntU1rcwtfo6e1TWt_e-VtAYynoVQBZ1Bs3MlPWbgAJREebqMRfScdtCP0ti&_nc_ohc=tgT5vP924EoAX8Kkttg&_nc_ht=scontent.fcai19-3.fna&oh=00_AfCrTWowo-1th4uHKzCKhIX1hnYatR6q7n3Od99oX6OqTw&oe=65E0794C',
        name: 'Mohammed Adel',
        jobTitle: 'Software Engineer',
      ),
      separatorBuilder: (context, index) => verticalSpace(8.0),
      itemCount: 8,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
