import 'package:bug_tracking/core/widgets/custom_avatar.dart';
import 'package:flutter/material.dart';

class SettingsAvatar extends StatefulWidget {
  const SettingsAvatar({Key? key}) : super(key: key);

  @override
  State<SettingsAvatar> createState() => _SettingsAvatarState();
}

class _SettingsAvatarState extends State<SettingsAvatar> {
  @override
  Widget build(BuildContext context) {
    return const CustomAvatar();
  }
}
