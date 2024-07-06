# Apple Lockdown mode

Simple and easy to use plugin for [apple lockdown mode](https://support.apple.com/en-us/105120) detection.

This package includes platform-specific implementation code for iOS 16+, iPadOS 16+.

## Instalation

In the `dependencies:` section of your `pubspec.yaml`, add the following line:

```yaml
apple_lockdown_mode: <latest_version>
```

## Usage

You can use it very easily. For example:

```dart
import 'package:apple_lockdown_mode/apple_lockdown_mode.dart';

final isEnabled = await AppleLockdownMode().isLockdownModeEnabled();
```

## Info

apple_lockdown_mode version: 0.0.1

## License

MIT
