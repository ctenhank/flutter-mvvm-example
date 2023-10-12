import 'package:get/get.dart';
import 'package:todo/mvvm_simple/model/model.dart';

class MVVMGetXViewModel extends GetxController {
  late Model model;

  @override
  void onInit() {
    super.onInit();
    model = Model();
  }

  RxInt count = 0.obs;

  void incrementCount() {
    model.incrementCount();
    count(model.count);
  }

  void decrementCount() {
    model.decrementCount();
    count(model.count);
  }
}
