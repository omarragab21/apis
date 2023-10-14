import 'apis_platform_interface.dart';

class Apis {
  Future<String?> getPlatformVersion() {
    return ApisPlatform.instance.getPlatformVersion();
  }

  Future<bool?> getData() {
    return ApisPlatform.instance.getData();
  }
}
