import 'dart:io';

import 'package:apple_lockdown_mode/apple_lockdown_mode_platform_interface.dart';

class AppleLockdownMode {
  /// Works only on iOS devices. For other platforms false is returned.
  Future<bool> isLockdownModeEnabled() {
    if (Platform.isIOS) {
      return AppleLockdownModePlatform.instance.isLockdownModeEnabled();
    }
    return Future.value(false);
  }
}
