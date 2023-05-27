import 'package:flutter/material.dart';

class CountExample extends StatefulWidget {
  const CountExample({Key? key}) : super(key: key);

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counting Screen'),
      ),
      body: Center(
        child: Text('0'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {  },
        child: Icon(Icons.add),

      ),
    );
  }
}
