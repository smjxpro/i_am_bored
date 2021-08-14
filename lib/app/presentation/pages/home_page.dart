import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_bored/app/presentation/manager/home_page_controller.dart';

class HomePage extends GetView<HomePageController> {
  static String routeName = '/home-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('I am bored'),
      ),
      body: Column(
        children: [
          Text('Are you bored?'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  await controller.onGetActivity();
                },
                child: Text('Hmm'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {},
                child: Text('Nah! I\'m good!'),
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: Obx(
              () => controller.activity.value != null
                  ? Text('${controller.activity.value!.activity}')
                  : Container(),
            ),
          ),
        ],
      ),
    );
  }
}
