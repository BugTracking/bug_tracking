import 'package:bug_tracking/core/style/app_texts.dart';
import 'package:flutter/material.dart';
class AddRadioList extends StatefulWidget {
  const AddRadioList({Key? key}) : super(key: key);

  @override
  State<AddRadioList> createState() => _AddRadioListState();
}

class _AddRadioListState extends State<AddRadioList> {
  int _selectedOption = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title: Text('Add Bug',
            style: AppTexts.text14OnBackgroundCairoSemiBold,
          ),
          value: 0,
          groupValue: _selectedOption,
          onChanged: (value) {
            setState(() {
              _selectedOption = value!;
            });
          },
        ),
        RadioListTile(
          title: Text('Add Project',
            style: AppTexts.text14OnBackgroundCairoSemiBold,),
          value: 1,
          groupValue: _selectedOption,
          onChanged: (value) {
            setState(() {
              _selectedOption = value!;
            });
          },
        ),
      ],
    );
  }
}
