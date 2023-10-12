import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/mvvm_simple/mvvm_getx/view_model/view_model.dart';

class MVVMGetXView extends GetView<MVVMGetXViewModel> {
  MVVMGetXView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Normal MVVM'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  controller.count.toString(),
                  style: const TextStyle(fontSize: 150),
                )),
        
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => controller.decrementCount(),
                    child: const Text('-'),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () => controller.incrementCount(),
                    child: const Text('+'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
