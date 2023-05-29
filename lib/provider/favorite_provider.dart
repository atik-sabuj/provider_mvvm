import 'package:flutter/foundation.dart';

class FavoriteItemProvider with ChangeNotifier {

  List<int> _selectedItem = [];

  List<int> get selectedItem => _selectedItem;

  void addItem(int value){
    _selectedItem.add(value);
    notifyListeners();
  }

}