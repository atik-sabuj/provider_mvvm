import 'package:flutter/material.dart';

class StateFulWidget extends StatefulWidget {
  const StateFulWidget({Key? key}) : super(key: key);

  @override
  State<StateFulWidget> createState() => _StateFulWidgetState();
}

class _StateFulWidgetState extends State<StateFulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add),
      ),
    );
  }
}
