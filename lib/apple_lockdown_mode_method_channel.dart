import 'package:apple_lockdown_mode/apple_lockdown_mode_platform_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class MethodChannelAppleLockdownMode extends AppleLockdownModePlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel(
      'tech.codegrowers.applelockdownmode/apple_lockdown_mode_plugin');

  @override
  Future<bool> isLockdownModeEnabled() async {
    final bool? isEnabled =
        await methodChannel.invokeMethod('IsLockdownModeEnabled');
    return isEnabled ?? false;
  }
}
