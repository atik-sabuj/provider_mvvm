import 'package:flutter/material.dart';

class NotifyListenerScreen extends StatefulWidget {
  NotifyListenerScreen({Key? key}) : super(key: key);

  ValueNotifier<int> _counter = ValueNotifier<int>(0);

  @override
  State<NotifyListenerScreen> createState() => _NotifyListenerScreenState();
}

class _NotifyListenerScreenState extends State<NotifyListenerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notify Listener Page'),
      ),
      body: const Center(
        child: Text('Sabuj', style: TextStyle(fontSize: 50),),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add),
      ),
    );
  }
}
