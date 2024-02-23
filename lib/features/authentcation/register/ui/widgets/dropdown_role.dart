import 'package:flutter/material.dart';
class RoleDropDownList extends StatefulWidget {
  const RoleDropDownList({Key? key}) : super(key: key);

  @override
  State<RoleDropDownList> createState() => _RoleDropDownListState();
}

class _RoleDropDownListState extends State<RoleDropDownList> {
  final List<String> role_list=['admin','user'];
  String dropdownValue = 'Role';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: DropdownButton(
          value: dropdownValue,
          items: role_list.map((String value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newvalue) {
            setState(() {
              dropdownValue = newvalue!;
            });
          },
        ), // Add a closing parenthesis here
      ),
    );
  }
}