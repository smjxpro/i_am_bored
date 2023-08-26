import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i_am_bored/app/presentation/manager/home_page_controller.dart';

class HomePage extends GetView<HomePageController> {
  static String routeName = '/home-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Are you bored?',
                      style: Theme.of(context).textTheme.titleLarge)
                  .marginOnly(bottom: 10),
            ),
            Obx(
              () => controller.activity.value != null
                  ? Text('You can try this:',
                      style: Theme.of(context).textTheme.titleMedium)
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            await controller.onGetActivity();
                          },
                          child: Text('Hmm'),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            controller.onResetActivity();
                          },
                          child: Text('Nah! I\'m good!'),
                        ),
                      ],
                    ),
            ),
            SizedBox(height: 10),
            Obx(
              () => controller.activity.value != null
                  ? Column(
                      children: [
                        Text('${controller.activity.value!.activity}'),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () => controller.onGetActivity(),
                          child: Text('Nah! Next?'),
                        ),
                        ElevatedButton(
                            onPressed: () => controller.onResetActivity(),
                            child: Text('Okay!')),
                      ],
                    )
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }
}
