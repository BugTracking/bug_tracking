import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:bug_tracking/core/widgets/custom_member.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MembersSelectionBottomSheet extends StatelessWidget {
  const MembersSelectionBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 16.0.h),
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    const Expanded(
                      child: CustomMember(
                        image:
                            'https://scontent.fcai19-3.fna.fbcdn.net/v/t39.30808-6/371805649_3553651871514319_8256964925996912081_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=efb6e6&_nc_eui2=AeHoUobKMmx3bihlpkFxC2EpMLX6OntU1rcwtfo6e1TWt_e-VtAYynoVQBZ1Bs3MlPWbgAJREebqMRfScdtCP0ti&_nc_ohc=tgT5vP924EoAX8Kkttg&_nc_ht=scontent.fcai19-3.fna&oh=00_AfCrTWowo-1th4uHKzCKhIX1hnYatR6q7n3Od99oX6OqTw&oe=65E0794C',
                        name: 'Mohammed Adel',
                        body: 'Flutter Developer',
                      ),
                    ),
                    Checkbox(value: true, onChanged: (value) {}),
                  ],
                );
              },
              separatorBuilder: (context, index) => verticalSpace(10.0),
              itemCount: 20,
            ),
          ),
          verticalSpace(8.0),
          CustomButton(
            onPressed: () {},
            text: 'Save',
          )
        ],
      ),
    );
  }
}
