import 'package:apple_lockdown_mode/apple_lockdown_mode_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class AppleLockdownModePlatform extends PlatformInterface {
  AppleLockdownModePlatform() : super(token: _token);

  static final Object _token = Object();

  static AppleLockdownModePlatform _instance = MethodChannelAppleLockdownMode();

  static AppleLockdownModePlatform get instance => _instance;

  static set instance(AppleLockdownModePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> isLockdownModeEnabled() {
    throw UnimplementedError('isProtected() has not been implemented.');
  }
}
