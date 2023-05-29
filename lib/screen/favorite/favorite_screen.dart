import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {

  List<int> selectedItem = [];

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Screen'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index){
                return ListTile(
                  onTap: (){
                    selectedItem.add(index);
                    setState(() {

                    });
                  },
                    title: Text('Item '+index.toString()),
                  trailing: Icon(
                      selectedItem.contains(index) ?Icons.favorite : Icons.favorite_border_outlined),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
