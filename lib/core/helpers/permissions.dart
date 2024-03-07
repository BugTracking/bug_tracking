import 'package:bug_tracking/core/helpers/toasts.dart';
import 'package:permission_handler/permission_handler.dart';

Future<bool> checkPermission() async {
  Map<Permission, PermissionStatus> statues = await [
    Permission.camera,
    Permission.storage,
    Permission.photos
  ].request();
  PermissionStatus? statusStorage = statues[Permission.storage];
  bool isGranted = statusStorage == PermissionStatus.granted;
  if (isGranted) {
    return true;
  }
  bool isPermanentlyDenied =
      statusStorage == PermissionStatus.permanentlyDenied;
  if (isPermanentlyDenied) {
    showToast(message: 'Please allow all permissions');
    return false;
  }
  return false;
}
