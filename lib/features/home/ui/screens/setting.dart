import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _settingsState();
}

class _settingsState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(title: 
      Text("settings")),
      body: Center(child: Text(
        "settings"
      )),
    );
  }
}