import 'package:flutter/material.dart';

class NotifyListenerScreen extends StatefulWidget {
  const NotifyListenerScreen({Key? key}) : super(key: key);

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
    );
  }
}
