import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:bug_tracking/features/add_project/data/models/categories_response_body.dart';
import 'package:bug_tracking/features/add_project/logic/cubit/add_project_cubit.dart';
import 'package:bug_tracking/features/add_project/logic/cubit/add_project_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/app_color.dart';

class CategoryTile extends StatelessWidget {
  final CategoryModel categoryModel;
  const CategoryTile({
    super.key,
    required this.categoryModel,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddProjectCubit, AddProjectState>(
      builder: (context, state) {
        AddProjectCubit cubit = context.read<AddProjectCubit>();
        return InkWell(
          onTap: () {
            cubit.emitSelectCategoriesState(categoryModel.title);
          },
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            height: 20.0.h,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10.0.w),
            decoration: BoxDecoration(
              color: cubit.categoryTitles.contains(categoryModel.title)
                  ? AppColor.bluish
                  : AppColor.lightGrey,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text(
              '# ${categoryModel.title}',
              style: cubit.categoryTitles.contains(categoryModel.title)
                  ? AppTexts.text12OnPrimaryCairoBold
                  : AppTexts.text12PrimaryCairoBold,
            ),
          ),
        );
      },
    );
  }
}
