import 'package:flutter/material.dart';
import 'package:todo/mvvm_simple/model/model.dart';

class MVVMProviderViewModel extends ChangeNotifier {
  late Model _model;

  MVVMProviderViewModel() {
    _model = Model();
  }

  int get count => _model.count;

  void update() {
    notifyListeners();
  }

  void incrementCount() {
    _model.incrementCount();
    update();
  }

  void decrementCount() {
    _model.decrementCount();
    update();
  }
}
