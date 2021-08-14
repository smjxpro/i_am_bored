import 'package:get/get.dart';
import 'package:i_am_bored/app/domain/entities/response/activity_response.dart';

abstract class ActivityProvider {
  Future<Response<ActivityResponse>> getActivity();
}

class ActivityProviderImpl extends GetConnect implements ActivityProvider {
  @override
  void onInit() {
    super.onInit();

    httpClient.baseUrl = 'http://www.boredapi.com/api/';
  }

  @override
  Future<Response<ActivityResponse>> getActivity() async {
    return get('activity/', decoder: ActivityResponse.fromDecodedJson);
  }
}
