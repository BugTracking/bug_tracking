import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

Future<bool> requestPermission() async {
  bool isHavePermission = false;
  if (Platform.isAndroid) {
    final DeviceInfoPlugin info = DeviceInfoPlugin();
    final AndroidDeviceInfo androidInfo = await info.androidInfo;
    final int androidVersion = int.parse(androidInfo.version.release);

    if (androidVersion >= 13) {
      final request = await [
        Permission.photos,
      ].request();

      isHavePermission =
          request.values.every((status) => status == PermissionStatus.granted);
    } else {
      final status = await Permission.storage.request();
      isHavePermission = status.isGranted;
    }
  } else {
    final status = await Permission.storage.request();
    isHavePermission = status.isGranted;
  }

  return isHavePermission;
}
