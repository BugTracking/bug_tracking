import 'package:bug_tracking/core/helpers/extensions.dart';
import 'package:bug_tracking/core/router/routes.dart';
import 'package:bug_tracking/core/router/screen_args.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationHelper {
  NotificationHelper._();

  static final FlutterLocalNotificationsPlugin _localNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static void initLocalNotifications() {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    DarwinInitializationSettings initializationSettingsDarwin =
        const DarwinInitializationSettings();
    InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );

    _localNotificationsPlugin.initialize(
      initializationSettings,
    );

    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'your_channel_id', // Same as in the show method
      'your_channel_name',
      description: 'your_channel_description',
      importance: Importance.high,
    );

    _localNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
  }

  static void init(BuildContext context) async {
    initLocalNotifications();
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      Map<String, dynamic> data = message.data;
      if (data['projectId'] != null) {
        context.push(
          Routes.projectDetails,
          arguments: ProjectDetailsScreenArgs(
            data['projectId'],
            data['projectTitle'],
            data['projectStatus'],
          ),
        );
      }
      if (data['bugId'] != null) {
        context.push(
          Routes.bugDetails,
          arguments: BugDetailsScreenArgs(
            data['bugId'],
            data['bugTitle'],
          ),
        );
      }
    });

    FirebaseMessaging.onMessage.listen((message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        _localNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              '${message.notification?.android?.channelId ?? 0}',
              '${message.notification?.title ?? 0}',
              channelDescription: message.notification?.title,
              importance: Importance.max,
              priority: Priority.high,
            ),
          ),
        );
      }
    });
  }
}
