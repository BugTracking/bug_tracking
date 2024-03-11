import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationHelper {
  NotificationHelper._();

  static final FlutterLocalNotificationsPlugin _localNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static void initLocalNotifications() {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');
    const DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings();
    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );

    _localNotificationsPlugin.initialize(initializationSettings);

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

  static Future<void> _backgroundMessageHandler(RemoteMessage message) async {
    print('Handling a background message: ${message.messageId}');
  }

  static Future<void> init() async {
    initLocalNotifications();
    FirebaseMessaging.onBackgroundMessage(_backgroundMessageHandler);

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      print('onMessageOpenedApp called');
      print(message.data);
    });

    FirebaseMessaging.onMessage.listen((message) {
      print('On Message');
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
            iOS: DarwinNotificationDetails(
              presentAlert: true,
              presentBadge: true,
              presentSound: true,
              subtitle: message.notification?.title,
            ),
          ),
        );
      }
    });
  }
}
