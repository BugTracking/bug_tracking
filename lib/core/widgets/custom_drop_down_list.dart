import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropDownList extends StatelessWidget {
  final List<String> items;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final String hintText;
  final String? selectedItem;
  final void Function(String?) onChanged;
  final String? errorMsg;
  const CustomDropDownList({
    Key? key,
    required this.items,
    this.prefixWidget,
    this.suffixWidget,
    required this.hintText,
    required this.selectedItem,
    required this.onChanged,
    required this.errorMsg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<String>(
      isExpanded: true,
      decoration: InputDecoration(
        prefixIcon: prefixWidget,
        contentPadding: EdgeInsets.symmetric(vertical: 16.h),
        border: const OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColor.darkGreyish,
            width: 0.8,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      hint: Text(
        hintText,
        style: AppTexts.text14GreyNunitoSansSemiBold,
      ),
      items: items.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: AppTexts.text16OnBackgroundNunitoSansSemiBold,
          ),
        );
      }).toList(),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorMsg;
        }
        return null;
      },
      onChanged: onChanged,
      buttonStyleData: const ButtonStyleData(
        padding: EdgeInsets.only(right: 8),
      ),
      iconStyleData: const IconStyleData(
        icon: Icon(
          Icons.arrow_drop_down,
          color: AppColor.greyish,
        ),
        iconSize: 24,
      ),
      dropdownStyleData: DropdownStyleData(
        isOverButton: true,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      menuItemStyleData: const MenuItemStyleData(
        padding: EdgeInsets.symmetric(horizontal: 16),
      ),
    );
  }
}
