import 'package:flutter/foundation.dart';

class FavoriteItem with ChangeNotifier {

  List<int> _selectedItem = [];

  List<int> get selectedItem => _selectedItem;

  void addItem(int value){
    _selectedItem.add(value);
  }

}