import 'package:flutter/material.dart';
import 'package:todo/mvvm_simple/mvvm/view_model/view_model.dart';

class MVVMProviderView extends StatelessWidget {
  MVVMProviderView({super.key});

  final viewModel = MVVMViewModel();

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
            StreamBuilder(
              stream: viewModel.controller.stream,
              builder: (context, snapshot) {
                return Text(
                  snapshot.data?.count.toString() ?? '-',
                  style: const TextStyle(fontSize: 150),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => viewModel.decrementCount(),
                    child: const Text('-'),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () => viewModel.incrementCount(),
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
