import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_mvvm/provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({Key? key}) : super(key: key);

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Counting Screen'),
      ),
      body: Center(
        child: Text(countProvider.count.toString(),
        style: TextStyle(fontSize: 50),),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {  },
        child: Icon(Icons.add),

      ),
    );
  }
}
