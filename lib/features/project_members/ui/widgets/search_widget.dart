import 'package:bug_tracking/core/style/app_color.dart';
import 'package:bug_tracking/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  TextEditingController searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
        controller: searchController,
        hintText: 'Search Here...',
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        prefixIcon:const Icon(
          Icons.search,
        color: AppColor.lightGrey,
      ),
    );
  }
}
