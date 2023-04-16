import 'package:flutter/material.dart';

import 'counter_state_provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RiverPod"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(width: 2,color: Colors.blue),
                borderRadius: BorderRadius.circular(15)
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context
                    , MaterialPageRoute(builder: (context){
                      return const CounterStateProvider();
                    }));
                  },
                  child: const Text(
                    "StateProvider",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                  )),
            ),
            const SizedBox(height: 20,),
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(width: 2,color: Colors.blue),
                borderRadius: BorderRadius.circular(15)
              ),
              child: TextButton(
                  onPressed: () {
                    
                  },
                  child: const Text(
                    "StateNotifierProvider",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                  )),
            ),
            const SizedBox(height: 20,),
            Container(
              width: 130,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(width: 2,color: Colors.blue),
                borderRadius: BorderRadius.circular(15)
              ),
              child: TextButton(
                  onPressed: () {
                    
                  },
                  child: const Text(
                    "StateController",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
