import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './StoreController.dart';

void main() => runApp(MaterialApp(
      home: CounterView(),
    ));

class CounterView extends GetView {
  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "Counter value is ${counterController.count}",
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(height: 16),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
              onPressed: () {
                counterController.increment();
              },
              child: Text('Increment',
                  style: TextStyle(fontSize: 14, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
