import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:i_am_bored/app/domain/entities/request/empty_request.dart';
import 'package:i_am_bored/app/domain/entities/response/activity_response.dart';
import 'package:i_am_bored/app/domain/use_cases/get_activity_use_case.dart';

class HomePageController extends GetxController {
  static HomePageController find = Get.find();

  final GetActivityUseCase _getActivityUseCase;

  HomePageController(this._getActivityUseCase);

  final activity = Rxn<ActivityResponse>();

  onGetActivity() async {
    try {
      final response = await _getActivityUseCase.call(EmptyRequest());

      activity.value = response;
    } catch (e) {
      Get.defaultDialog(title: 'Error', content: Text(e.toString()));
    }
  }

  void onResetActivity() {
    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  }
}
