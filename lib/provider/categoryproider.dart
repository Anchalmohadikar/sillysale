import 'dart:convert';
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:sillysale/constants/fzstore.dart';
import 'package:sillysale/services/categories.dart';
import 'package:sillysale/services/connectionStatus.dart';

class CategoryPro with ChangeNotifier {
  CategoryPro();
  bool _isFetching = false;

  bool get isFetching => _isFetching;

  List<ChildrenDatum> sillyCategory = List<ChildrenDatum>();

  ConnectionStatus _connection = ConnectionStatus.getInstance();

  Future<List<ChildrenDatum>> fetchData() async {
    _isFetching = true;
    String jsonresponse = '';
    notifyListeners();
    await _connection.checkConnection();
    if (_connection.hasConnection) {
      var res = await http.get(
          FZStore.url + FZStore.resturl + FZStore.categoryurl,
          headers: {"Authorization": FZStore.accesToken});

      if (res.statusCode == 200) {
        jsonresponse = res.body;
      }
      _isFetching = false;
      notifyListeners();

      if (jsonresponse.isNotEmpty) {
        var decodedRes = jsonDecode(res.body);
        sillyCategory = CategoryRes.fromJson(decodedRes).childrenData;
      }
    }
    return sillyCategory;
  }

  List<ChildrenDatum> getSillyCategory() => sillyCategory;
}
