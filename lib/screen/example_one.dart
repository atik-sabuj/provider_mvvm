import 'package:flutter/material.dart';

class ExampleOneScreen extends StatefulWidget {
  const ExampleOneScreen({Key? key}) : super(key: key);

  @override
  State<ExampleOneScreen> createState() => _ExampleOneScreenState();
}

class _ExampleOneScreenState extends State<ExampleOneScreen> {

  double value = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example One Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(value: value, onChanged: (value){

          }),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.green
                ),
                child: Center(
                  child: Text('Container 1'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}