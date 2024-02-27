import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _notificationState();
}

class _notificationState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: 
      Text("notifiaction")),
      body: Center(child: Text(
        "notifiaction"
      )),
    );
  }
}