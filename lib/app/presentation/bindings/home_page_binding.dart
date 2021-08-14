import 'package:get/get.dart';
import 'package:i_am_bored/app/data/remote/data_sources/activity_provider.dart';
import 'package:i_am_bored/app/data/repositories/activity_repository.dart';
import 'package:i_am_bored/app/domain/repositories/activity_repository.dart';
import 'package:i_am_bored/app/domain/use_cases/get_activity_use_case.dart';
import 'package:i_am_bored/app/presentation/manager/home_page_controller.dart';

class HomePageBinding extends Bindings {
  final find = Get.find;
  @override
  void dependencies() {
    Get.lazyPut<ActivityProvider>(() => ActivityProviderImpl());
    Get.lazyPut<ActivityRepository>(() => ActivityRepositoryImpl(find()));
    Get.lazyPut(() => GetActivityUseCase(find()));
    Get.lazyPut(() => HomePageController(find()));
  }
}
