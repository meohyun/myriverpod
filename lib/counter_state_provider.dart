import 'package:flutter/material.dart';

class CounterStateProvider extends StatelessWidget {
  const CounterStateProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StateProvider"),
      ),
      body: Center(
          child: Text(
        '0',
        style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
      )),
      floatingActionButton: Align(alignment: Alignment.bottomRight,child: Row(children: [
        FloatingActionButton(onPressed: (){} ,child: Text("+"),),
        SizedBox(width: 10,),
        FloatingActionButton(onPressed: (){} ,child: Text("-"),),
      ],),),
    );
  }
}
