import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sillysale/constants/fzstore.dart';
import 'package:sillysale/services/connectionStatus.dart';
import 'package:sillysale/services/response.dart';

class Products with ChangeNotifier {
  Products();
  bool _isFetching = false;

  bool get isFetching => _isFetching;

  List<Item> sillyProducts = List<Item>();

  ConnectionStatus _connection = ConnectionStatus.getInstance();

  Future<List<Item>> fetchData() async {
    _isFetching = true;
    String jsonresponse = '';   
    notifyListeners();
    await _connection.checkConnection();
    if (_connection.hasConnection) {
      var res = await http.get(
          FZStore.url + FZStore.resturl + FZStore.productsurl,
          headers: {"Authorization": FZStore.accesToken});

      if (res.statusCode == 200) {
        jsonresponse = res.body;
      }
      _isFetching = false;
      notifyListeners();

      if (jsonresponse.isNotEmpty) {
        var decodedRes = jsonDecode(res.body);
        sillyProducts = Silly.fromJson(decodedRes).items;
      }
    }
    return sillyProducts;
  }

  List<Item> getSillyProducts() => sillyProducts;
}
