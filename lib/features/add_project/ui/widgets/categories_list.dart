import 'package:bug_tracking/core/helpers/spacing.dart';
import 'package:bug_tracking/features/add_project/logic/cubit/add_project_cubit.dart';
import 'package:bug_tracking/features/add_project/logic/cubit/add_project_state.dart';
import 'package:bug_tracking/features/add_project/ui/widgets/category_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddProjectCubit, AddProjectState>(
      builder: (context, state) {
        AddProjectCubit cubit = context.read<AddProjectCubit>();
        return SizedBox(
          height: 30.0.h,
          child: ListView.separated(
            itemBuilder: (context, index) => CategoryTile(
              categoryModel: cubit.categoryFilteredList.isEmpty
                  ? cubit.categories[index]
                  : cubit.categoryFilteredList[index],
            ),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => horizontalSpace(5.0),
            itemCount: cubit.categoryFilteredList.isEmpty
                ? cubit.categories.length
                : cubit.categoryFilteredList.length,
          ),
        );
      },
    );
  }
}
