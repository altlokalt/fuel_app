import 'package:fuel_app/core/app_export.dart';
import 'package:fuel_app/core/utils/pref_utils.dart';
// ignore: unused_import
//import 'package:fuel_app/data/apiClient/api_client.dart';
import 'package:fuel_app/views/data/apiClient/api_client.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
