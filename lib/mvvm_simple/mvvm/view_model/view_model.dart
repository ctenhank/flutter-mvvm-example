import 'dart:async';

import 'package:todo/mvvm_simple/model/model.dart';

class MVVMViewModel {
  late Model _model;
  StreamController<Model> controller = StreamController<Model>();
  Stream<Model> get mvvmStream => controller.stream;

  MVVMViewModel() { _model = Model();}

  int get count => _model.count;

  void update() {
    controller.sink.add(_model);
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