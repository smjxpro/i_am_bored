import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_bored/app/presentation/navigation/app_pages.dart';

import 'presentation/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'I am bored',
      getPages: AppPages.pages,
      initialRoute: HomePage.routeName,
    );
  }
}
