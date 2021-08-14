import 'package:get/get.dart';
import 'package:i_am_bored/app/presentation/bindings/home_page_binding.dart';
import 'package:i_am_bored/app/presentation/pages/home_page.dart';

abstract class AppPages {
  static List<GetPage> pages = [
    GetPage(
      name: HomePage.routeName,
      page: () => HomePage(),
      binding: HomePageBinding(),
    ),
  ];
}
