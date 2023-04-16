import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyCounter extends StateNotifier<int> {
  MyCounter() : super(0);

  void increment() => state++;
  void decrement() => state--;
  void initCount() => state = 0;
}

final myCounterStateNotifierProvider = StateNotifierProvider((ref) {
  return MyCounter();
});

class StateNotifierCounter extends ConsumerWidget {
  const StateNotifierCounter({super.key});
  

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final counterRead = ref.read(myCounterStateNotifierProvider.notifier);
    final counterState = ref.watch(myCounterStateNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("StateNotifierProvider"),
      ),
      body: Center(
          child: Text(
        "$counterState",
        style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
      )),
      floatingActionButton: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {
                counterRead.increment();
              },
              child: Icon(Icons.add),
              heroTag: null,
            ),
            const SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                counterRead.decrement();
              },
              child: Icon(Icons.remove),
              heroTag: null,
            ),
            const SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                counterRead.initCount();
              },
              child: Text("초기화"),
              heroTag: null,
            ),
          ],
        ),
      ),
    );
  }
}
