import 'package:get/get.dart';
import 'package:todo/mvvm_complex/model/simple_user.dart';
import 'package:todo/mvvm_complex/repository/random_user_repository.dart';

class UserListViewModel extends GetxController{
  RxList<RandomUserSimple> userList = <RandomUserSimple>[].obs;

  void loadSimpleUser() async {
    final simpleUsers = await RandomUserRepository.instance.getAllSimpleUser();
    userList(simpleUsers);
  }
}