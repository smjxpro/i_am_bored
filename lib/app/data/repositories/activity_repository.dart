import 'package:i_am_bored/app/data/remote/data_sources/activity_provider.dart';
import 'package:i_am_bored/app/domain/entities/response/activity_response.dart';
import 'package:i_am_bored/app/domain/repositories/activity_repository.dart';

class ActivityRepositoryImpl implements ActivityRepository {
  final ActivityProvider _activityProvider;

  ActivityRepositoryImpl(this._activityProvider);

  @override
  Future<ActivityResponse> getActivity() async {
    final response = await _activityProvider.getActivity();

    if (response.hasError) {
      return Future.error(response.statusText!);
    }

    return response.body!;
  }
}
