import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'apis_platform_interface.dart';

/// An implementation of [ApisPlatform] that uses method channels.
class MethodChannelApis extends ApisPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('apis');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<bool?> getData() async {
    bool? result = await methodChannel.invokeMethod<bool>('getData');
    return result;
  }
}
