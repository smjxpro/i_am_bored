import 'package:i_am_bored/app/domain/entities/request/empty_request.dart';
import 'package:i_am_bored/app/domain/entities/response/activity_response.dart';
import 'package:i_am_bored/app/domain/repositories/activity_repository.dart';
import 'package:i_am_bored/app/domain/use_cases/base_use_case.dart';

class GetActivityUseCase
    implements BaseUseCase<ActivityResponse, EmptyRequest> {
  final ActivityRepository _activityRepository;

  GetActivityUseCase(this._activityRepository);

  @override
  Future<ActivityResponse> call(EmptyRequest request) {
    return _activityRepository.getActivity();
  }
}
