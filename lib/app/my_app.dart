import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'I am bored',
      home: HomePage(),
    );
  }
}

class HomePage extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('I am bored'),
      ),
      body: Center(
        child: Text('Do something'),
      ),
    );
  }
}
