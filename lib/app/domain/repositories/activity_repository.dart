import 'package:i_am_bored/app/domain/entities/response/activity_response.dart';

abstract class ActivityRepository {
  Future<ActivityResponse> getActivity();
}
