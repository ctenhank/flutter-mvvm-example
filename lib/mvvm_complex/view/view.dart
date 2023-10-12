import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/mvvm_complex/view_model/user_list_view_model.dart';

class SimpleUserListView extends GetView<UserListViewModel> {
  const SimpleUserListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple User LIst')),
      body: Obx(
        () {
          final userList = controller.userList;
          return ListView.separated(
            itemCount: userList.length,
            itemBuilder: (context, index) => Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(userList[index].thumbnail ?? '-'),
                ),
  
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(userList[index].fullname ?? '-'),
                    Text(userList[index].phone ?? '-'),
                  ],
                ),
              ],
            ),
            separatorBuilder: (_, __) => const Divider(),
          );
        },
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () => controller.loadSimpleUser(),
        child: const Text('Load user'),
      ),
    );
  }
}
