import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/widgets/custom_text_field.dart';
import 'package:bug_tracking/features/members/logic/member_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchWidget extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;

  const SearchWidget(
      {Key? key, required this.hintText, required this.controller})
      : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: widget.controller,
      hintText: widget.hintText,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      prefixIcon: const Icon(
        Icons.search,
        color: AppColor.lightGrey,
      ),
      oncChange: (value) =>
          context.read<MembersCubit>().searchFilterSearch(value),
    );
  }
}
