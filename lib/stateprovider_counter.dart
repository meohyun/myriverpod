import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterStateProvider = StateProvider<int>((ref) {
  return 0;
});

class CounterStateProvider extends ConsumerWidget {
  

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("StateProvider"),
      ),
      body: Center(
          child: Text(
        "$counter",
        style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
      )),
      floatingActionButton: Align(
        alignment: Alignment.bottomLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: (){
                
              },
              child: Icon(Icons.add),
              heroTag: null,
            ),
            const SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.remove),
              heroTag: null,
            ),
          ],
        ),
      ),
    );
  }
}
