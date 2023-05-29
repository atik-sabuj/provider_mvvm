import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Screen'),
      ),
      body: Column(
        children: [
          ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index){
              return ListTile(
                  title: Text('Item '+index.toString()),
              );
            },
          )
        ],
      ),
    );
  }
}
