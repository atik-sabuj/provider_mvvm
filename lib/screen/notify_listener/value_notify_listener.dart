import 'package:flutter/material.dart';

class NotifyListenerScreen extends StatelessWidget {
  NotifyListenerScreen({Key? key}) : super(key: key);

  ValueNotifier<int> _counter = ValueNotifier<int>(0);
  ValueNotifier<bool> toggle = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Notify Listener Page'),
      ),
      body: Column(
        children: [
          TextFormField(
            enabled: toggle.value,
            decoration: InputDecoration(
              hintText: 'Password'
            ),
          ),
          Center(
            child: ValueListenableBuilder(
                valueListenable: _counter,
                builder: (context, value, child){
                  return Text(_counter.value.toString(), style: TextStyle(fontSize: 50),);
                }),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _counter.value++ ;
          print(_counter.value.toString());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
