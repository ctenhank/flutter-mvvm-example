import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/mvvm_simple/mvvm_provider/view_model/view_model.dart';

class MVVMProviderView extends StatelessWidget {
  MVVMProviderView({super.key});


  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<MVVMProviderViewModel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Normal MVVM'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<MVVMProviderViewModel>(
              builder: (_, viewModel, widget) {
                return Text(
                  viewModel.count.toString(),
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
