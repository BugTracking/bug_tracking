import 'package:flutter/material.dart';
import 'package:bug_tracking/core/style/app_color.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:bug_tracking/core/style/app_texts.dart';

class RoleDropDownList extends StatefulWidget {
  const RoleDropDownList({Key? key}) : super(key: key);

  @override
  State<RoleDropDownList> createState() => _RoleDropDownListState();
}

class _RoleDropDownListState extends State<RoleDropDownList> {
  List<String> roles = ['User', 'Admin'];

  String? selectedRole;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<String>(
      isExpanded: true,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.groups,
          color: AppColor.greyish,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 16),
        border: const OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColor.lightGrey,
            width: 0.8,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      hint: Text(
        'Role',
        style: AppTexts.text16GreyNunitoSansRegular,
      ),
      value: selectedRole,
      items: roles.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: AppTexts.text16GreyNunitoSansRegular,
          ),
        );
      }).toList(),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'choose a role';
        }
        return null;
      },
      onChanged: (String? newValue) {
        setState(() {
          selectedRole = newValue!;
        });
      },
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
