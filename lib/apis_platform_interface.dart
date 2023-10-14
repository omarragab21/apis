import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'apis_method_channel.dart';

abstract class ApisPlatform extends PlatformInterface {
  /// Constructs a ApisPlatform.
  ApisPlatform() : super(token: _token);

  static final Object _token = Object();

  static ApisPlatform _instance = MethodChannelApis();

  /// The default instance of [ApisPlatform] to use.
  ///
  /// Defaults to [MethodChannelApis].
  static ApisPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ApisPlatform] when
  /// they register themselves.
  static set instance(ApisPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool?> getData() {
    throw UnimplementedError('get Data() has not been implemented.');
  }
}
