import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/core/widgets/custom_button.dart';
import 'package:bug_tracking/core/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AddRadioList extends StatefulWidget {
  const AddRadioList({Key? key}) : super(key: key);

  @override
  State<AddRadioList> createState() => _AddRadioListState();
}

class _AddRadioListState extends State<AddRadioList> {

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        verticalSpace(20),
        CustomButton(onPressed: (){}, text: 'Add Bug',width: 250.w,),
        verticalSpace(20),
        CustomOutlinedButton(onPressed: (){}, text: 'Add Project',width: 250.w,),

      ],
    );
  }
}
